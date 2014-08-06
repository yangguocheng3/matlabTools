function dr = bdrwinfo(dx,Ny)

% bdrwinfo.m    BUTTON: SHOW SHORT HELP
%   
%                 Drawing Filter Realizations
%   
%   Authors: Miroslav D. Lutovac, Dejan V. Tosic, 1999/02/21
%   lutovac@iritel.bg.ac.yu    http://galeb.etf.bg.ac.yu/~lutovac/
%   tosic@galeb.etf.bg.ac.yu   http://www.rcub.bg.ac.yu/~tosicde/
%   Copyright (c) 1999-2000 by Lutovac & Tosic
%   $Revision: 1.21 $  $Date: 2000/10/03 13:45$
%   
%   References:
%   Miroslav D. Lutovac, Dejan V. Tosic, Brian L. Evans
%        Filter Design for Signal Processing
%           Using MATLAB and Mathematica
%        Prentice Hall - ISBN 0-201-36130-2 
%         http://www.prenhall.com/lutovac
%
                         
% This file is part of DrawFilt toolbox for MATLAB.
% Refer to the file LICENSE.TXT for full details.
%                        
% DrawFilt version 2.1, Copyright (c) 1999-2000 M. Lutovac and D. Tosic
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; see LICENSE.TXT for details.
%                       
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%                       
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc.,  59 Temple Place,  Suite 330,  Boston,
% MA  02111-1307  USA,  http://www.fsf.org/

clf
Nydx = 1;
matlabversion = version;
screensizedraw = get(0,'ScreenSize');
pdraw = get(gca,'Position');

if matlabversion(1)-'4' ==0 
  if screensizedraw(3) == 800
    FontInfo = 10;
  else
    FontInfo = 8;
  end
else
  FontInfo = 8;
end

text(0.05,0.99*Nydx,...
'DrawFilt version 2.1, Copyright (c) 1999-2000 M.Lutovac and D.Tosic', 'FontWeight', 'bold','FontSize',FontInfo)
text(0.05,0.94*Nydx,...
'This is free software; see LICENSE.TXT for details','FontSize',FontInfo-2)

uicontrol('Style', 'text', 'String', 'Adder', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.88*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'Mult', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.16*pdraw(3)+pdraw(1) 0.88*pdraw(4)+pdraw(2) 0.07*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'Delay', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.24*pdraw(3)+pdraw(1) 0.88*pdraw(4)+pdraw(2) 0.09*pdraw(3) 0.045*pdraw(4)]);
text(0.34,0.9*Nydx,'draw Adder, Multiplier, Delay','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'UP', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.83*pdraw(4)+pdraw(2) 0.05*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'down', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.11*pdraw(3)+pdraw(1) 0.83*pdraw(4)+pdraw(2) 0.08*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'Block 4', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.20*pdraw(3)+pdraw(1) 0.83*pdraw(4)+pdraw(2) 0.12*pdraw(3) 0.045*pdraw(4)]);
text(0.33,0.85*Nydx,'draw Up- Down-Sampler, 4-Terminal Block','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'LINE', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.78*pdraw(4)+pdraw(2) 0.08*pdraw(3) 0.045*pdraw(4)]);
text(0.14,0.80*Nydx,'draw line between two points','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', ' __I ', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.73*pdraw(4)+pdraw(2) 0.07*pdraw(3) 0.045*pdraw(4)]);
text(0.13,0.75*Nydx,'draw 2-segment line horizontal + vertical','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', ' I__ ', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.68*pdraw(4)+pdraw(2) 0.07*pdraw(3) 0.045*pdraw(4)]);
text(0.13,0.70*Nydx,'draw 2-segment line vertical + horizontal','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'NODE', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.63*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'IN', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.16*pdraw(3)+pdraw(1) 0.63*pdraw(4)+pdraw(2) 0.04*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'OUT', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.21*pdraw(3)+pdraw(1) 0.63*pdraw(4)+pdraw(2) 0.08*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', '>', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.3*pdraw(3)+pdraw(1) 0.63*pdraw(4)+pdraw(2) 0.02*pdraw(3) 0.045*pdraw(4)]);
text(0.33,0.65*Nydx,'draw node, input, output, arrow','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'GRND', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.58*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'TEXT', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.16*pdraw(3)+pdraw(1) 0.58*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'BLOCK', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.27*pdraw(3)+pdraw(1) 0.58*pdraw(4)+pdraw(2) 0.12*pdraw(3) 0.045*pdraw(4)]);
text(0.4,0.60*Nydx,'draw ground, text, block','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', '(V)', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.48*pdraw(4)+pdraw(2) 0.05*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', '<V>', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.11*pdraw(3)+pdraw(1) 0.48*pdraw(4)+pdraw(2) 0.06*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', '(I)', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.18*pdraw(3)+pdraw(1) 0.48*pdraw(4)+pdraw(2) 0.05*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', '<I>', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.24*pdraw(3)+pdraw(1) 0.48*pdraw(4)+pdraw(2) 0.05*pdraw(3) 0.045*pdraw(4)]);
text(0.3,0.50*Nydx,'draw voltage source, current source','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'OpAmp', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.43*pdraw(4)+pdraw(2) 0.12*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'OTA', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.18*pdraw(3)+pdraw(1) 0.43*pdraw(4)+pdraw(2) 0.08*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'CC', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.27*pdraw(3)+pdraw(1) 0.43*pdraw(4)+pdraw(2) 0.05*pdraw(3) 0.045*pdraw(4)]);
text(0.33,0.45*Nydx,'draw OpAmp, OTA, CC','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'R', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.55 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.53*pdraw(4)+pdraw(2) 0.03*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'C', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.09*pdraw(3)+pdraw(1) 0.53*pdraw(4)+pdraw(2) 0.03*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'L', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.13*pdraw(3)+pdraw(1) 0.53*pdraw(4)+pdraw(2) 0.025*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'Z', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.165*pdraw(3)+pdraw(1) 0.53*pdraw(4)+pdraw(2) 0.025*pdraw(3) 0.045*pdraw(4)]);
text(0.2,0.55*Nydx,'draw resistor, capacitor, inductor, impedance','FontSize',FontInfo)

if matlabversion(1)-'4' ==0 
      text(0.005,0.4*Nydx,...
   'Setup button font: MATLAB Command Window, Options, Uicontrols Font',...
   'FontSize',FontInfo-1)
end

uicontrol('Style', 'text', 'String', 'NEW', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.33*pdraw(4)+pdraw(2) 0.09*pdraw(3) 0.045*pdraw(4)]);
text(0.15,0.35*Nydx,'start a new drawing','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'OPEN', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.28*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'SAVE', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.16*pdraw(3)+pdraw(1) 0.28*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
text(0.27,0.30*Nydx,'open, save drawing','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'EDIT', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.23*pdraw(4)+pdraw(2) 0.09*pdraw(3) 0.045*pdraw(4)]);
text(0.15,0.25*Nydx,'edit parameter values','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'MA', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.18*pdraw(4)+pdraw(2) 0.06*pdraw(3) 0.045*pdraw(4)]);
text(0.12,0.20*Nydx,'save drawing in drawmaaf.m (start in Mathematica drawmaaf.ma)','FontSize',FontInfo-1)

uicontrol('Style', 'text', 'String', 'auxfilt.m', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.7 0.99 0.99] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.13*pdraw(4)+pdraw(2) 0.12*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'EPS', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.175*pdraw(3)+pdraw(1) 0.13*pdraw(4)+pdraw(2) 0.08*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'view', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.26*pdraw(3)+pdraw(1) 0.13*pdraw(4)+pdraw(2) 0.08*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'open', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.345*pdraw(3)+pdraw(1) 0.13*pdraw(4)+pdraw(2) 0.08*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'save', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.43*pdraw(3)+pdraw(1) 0.13*pdraw(4)+pdraw(2) 0.08*pdraw(3) 0.045*pdraw(4)]);
text(0.1,0.1*Nydx,'make auxfilt.eps, view, open, save auxfilt.m','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'examples', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.6 0.95 0.95] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) 0.03*pdraw(4)+pdraw(2) 0.15*pdraw(3) 0.045*pdraw(4)]);
text(0.21,0.05*Nydx,'view examples','FontSize',FontInfo)

uicontrol('Style', 'text', 'String', 'DELETE', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.05*pdraw(3)+pdraw(1) -0.02*pdraw(4)+pdraw(2) 0.13*pdraw(3) 0.045*pdraw(4)]);
uicontrol('Style', 'text', 'String', 'UNDO', 'Units','normalized' ...
  ,'HorizontalAlignment', 'left', 'BackgroundColor',[0.5 0.9 0.9] ...
  ,'Position',[0.19*pdraw(3)+pdraw(1) -0.02*pdraw(4)+pdraw(2) 0.10*pdraw(3) 0.045*pdraw(4)]);
text(0.3,0.001*Nydx,'delete, undelete selected items','FontSize',FontInfo)


axis('off')
