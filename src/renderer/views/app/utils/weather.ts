import { WEATHER_API_KEY, dictionary } from '../constants';
import {
  IForecastRequest,
  IOpenWeatherItem,
  IForecastItem,
  IWeatherCondition,
  IForecast,
} from '~/interfaces';
import { capitalizeFirst, requestURL } from '~/utils';

const getCondition = (str: string): IWeatherCondition => {
  str = str.toLowerCase();
  if (str === 'few-clouds' || str === 'clouds') return 'fewClouds';
  return str as IWeatherCondition;
};

const getForWeek = (items: IOpenWeatherItem[]) => {
  const list: IForecastItem[] = [];

  for (const item of items) {
    const date = new Date(item.dt * 1000);
    const hours = date.getHours();
    const dateStr = date.toLocaleDateString();
    const el: IForecastItem = list.find(
      (e) => e.date.toLocaleDateString() === dateStr,
    );

    if (el != null && el.nightTemp != null) continue;

    const temp = Math.round(item.main.temp);
    const weather = item.weather[0];

    if (el == null || (el.dayTemp == null && hours >= 10)) {
      list.push({
        dayTemp: temp,
        date,
        dayName: dictionary.shortDays[date.getDay()],
        description: capitalizeFirst(weather.description),
        weather: getCondition(weather.main),
      });
    }

    if (el != null && el.nightTemp == null && item.sys.pod === 'n') {
      el.nightTemp = temp;
    }
  }

  return list.sort((a, b) => a.date.getTime() - b.date.getTime());
};

export const getWeather = async ({
  city,
  lang,
  units,
}: IForecastRequest): Promise<IForecast> => {
  const url = `https://api.openweathermap.org/data/2.5/forecast?q=${city}&appid=${WEATHER_API_KEY}&lang=${lang}&units=${units}`;
  const data = JSON.parse((await requestURL(url)).data);
  const items = getForWeek(data.list);

  return {
    city: capitalizeFirst(city),
    today: items[0],
    week: items.splice(1, 4),
  };
};
