import styled, { css } from 'styled-components';
import { ITheme } from '~/interfaces';
import { platform } from 'os';

// margin-top: ${isHTMLFullscreen ? -TOOLBAR_HEIGHT : 0}px;

export const StyledTitlebar = styled.div`
  position: relative;
  z-index: 100;
  display: flex;
  flex-flow: row;
  color: rgba(0, 0, 0, 0.8);
  width: 100%;

  &:before {
    position: absolute;
    z-index: 0;
    top: 4px;
    left: 4px;
    right: 4px;
    bottom: 0px;
    -webkit-app-region: drag;
    content: '';
  }

  ${({
    isHTMLFullscreen,
    isFullscreen,
    theme,
  }: {
    isHTMLFullscreen: boolean;
    isFullscreen: boolean;
    theme: ITheme;
  }) => css`
    background-color: ${theme['titlebar.backgroundColor']};
    height: ${theme.titlebarHeight}px;
    align-items: ${theme.isCompact ? 'center' : 'initial'};
    padding-left: ${platform() === 'darwin' && !isFullscreen ? 78 : 4}px;
  `};
`;
