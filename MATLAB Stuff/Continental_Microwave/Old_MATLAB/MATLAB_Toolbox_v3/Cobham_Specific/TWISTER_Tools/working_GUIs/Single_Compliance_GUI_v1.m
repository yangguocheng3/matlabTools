function varargout = Single_Compliance_GUI_v1(varargin)
% SINGLE_COMPLIANCE_GUI_V1 M-file for Single_Compliance_GUI_v1.fig
%      SINGLE_COMPLIANCE_GUI_V1, by itself, creates a new SINGLE_COMPLIANCE_GUI_V1 or raises the existing
%      singleton*.
%
%      H = SINGLE_COMPLIANCE_GUI_V1 returns the handle to a new SINGLE_COMPLIANCE_GUI_V1 or the handle to
%      the existing singleton*.
%
%      SINGLE_COMPLIANCE_GUI_V1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SINGLE_COMPLIANCE_GUI_V1.M with the given input arguments.
%
%      SINGLE_COMPLIANCE_GUI_V1('Property','Value',...) creates a new SINGLE_COMPLIANCE_GUI_V1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Single_Compliance_GUI_v1_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Single_Compliance_GUI_v1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Copyright 2002-2003 The MathWorks, Inc.

% Edit the above text to modify the response to help Single_Compliance_GUI_v1

% Last Modified by GUIDE v2.5 16-Apr-2009 09:31:21

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Single_Compliance_GUI_v1_OpeningFcn, ...
                   'gui_OutputFcn',  @Single_Compliance_GUI_v1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Single_Compliance_GUI_v1 is made visible.
function Single_Compliance_GUI_v1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Single_Compliance_GUI_v1 (see VARARGIN)

% Choose default command line output for Single_Compliance_GUI_v1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Single_Compliance_GUI_v1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Single_Compliance_GUI_v1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Data_File_Browse.
function Data_File_Browse_Callback(hObject, eventdata, handles)
% hObject    handle to Data_File_Browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Select file to be analyzed
orig_dir=cd;
if exist('F:\','dir')
    cd('F:\NEW_WARRIOR_DESIGN\NEW FULL TWISTER SYSTEM DATA');
    [datafile,filepath]=...
        uigetfile({'*.cti';'*.s2p';'*.*'},'Select TWISTER Data File:');
else
    cd('C:\');
    [datafile,filepath]=...
        uigetfile({'*.cti';'*.s2p';'*.*'},'Select TWISTER Data File:');
end
cd(orig_dir);
fullfilepath=fullfile(filepath,datafile);

% Update DataFile_EditBox handle
set(handles.DataFile_EditBox,'String',fullfilepath);

guidata(hObject,handles)

function Data_File_EditBox_Callback(hObject, eventdata, handles)
% hObject    handle to Data_File_EditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Data_File_EditBox as text
%        str2double(get(hObject,'String')) returns contents of Data_File_EditBox as a double


% --- Executes during object creation, after setting all properties.
function Data_File_EditBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Data_File_EditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in Spec_File_Browse.
function Spec_File_Browse_Callback(hObject, eventdata, handles)
% hObject    handle to Spec_File_Browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Select file to be analyzed
orig_dir=cd;
cd('C:\MATLAB_Toolbox\Cobham_Specific\TWISTER_Tools\Specs');
[specfile,filepath]=...
    uigetfile({'*.cti';'*.s2p';'*.*'},'Select TWISTER Spec File:');
cd(orig_dir);
fullfilepath=fullfile(filepath,specfile);

% Update SpecFile_EditBox handle
set(handles.SpecFile_EditBox,'String',fullfilepath);

guidata(hObject,handles)

function SpecFile_EditBox_Callback(hObject, eventdata, handles)
% hObject    handle to SpecFile_EditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SpecFile_EditBox as text
%        str2double(get(hObject,'String')) returns contents of SpecFile_EditBox as a double

SpecFile_Path=get(handles.SpecFile_EditBox,'String');

% Update SpecFile_EditBox handle
set(handles.SpecFile_EditBox,'String',SpecFile_Path);

guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function SpecFile_EditBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SpecFile_EditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W1_Amp_Spec_Callback(hObject, eventdata, handles)
% hObject    handle to W1_Amp_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W1_Amp_Spec as text
%        str2double(get(hObject,'String')) returns contents of W1_Amp_Spec as a double


% --- Executes during object creation, after setting all properties.
function W1_Amp_Spec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W1_Amp_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W2_Amp_Spec_Callback(hObject, eventdata, handles)
% hObject    handle to W2_Amp_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W2_Amp_Spec as text
%        str2double(get(hObject,'String')) returns contents of W2_Amp_Spec as a double


% --- Executes during object creation, after setting all properties.
function W2_Amp_Spec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W2_Amp_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Slope_Spec_Callback(hObject, eventdata, handles)
% hObject    handle to Slope_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Slope_Spec as text
%        str2double(get(hObject,'String')) returns contents of Slope_Spec as a double


% --- Executes during object creation, after setting all properties.
function Slope_Spec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Slope_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W1_GD_Spec_Callback(hObject, eventdata, handles)
% hObject    handle to W1_GD_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W1_GD_Spec as text
%        str2double(get(hObject,'String')) returns contents of W1_GD_Spec as a double


% --- Executes during object creation, after setting all properties.
function W1_GD_Spec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W1_GD_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W2_GD_Spec_Callback(hObject, eventdata, handles)
% hObject    handle to W2_GD_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W2_GD_Spec as text
%        str2double(get(hObject,'String')) returns contents of W2_GD_Spec as a double


% --- Executes during object creation, after setting all properties.
function W2_GD_Spec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W2_GD_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W3_GD_Spec_Callback(hObject, eventdata, handles)
% hObject    handle to W3_GD_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W3_GD_Spec as text
%        str2double(get(hObject,'String')) returns contents of W3_GD_Spec as a double


% --- Executes during object creation, after setting all properties.
function W3_GD_Spec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W3_GD_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Max_Var_Spec_Callback(hObject, eventdata, handles)
% hObject    handle to Max_Var_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Max_Var_Spec as text
%        str2double(get(hObject,'String')) returns contents of Max_Var_Spec as a double


% --- Executes during object creation, after setting all properties.
function Max_Var_Spec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Max_Var_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Edge_to_Edge_Spec_Callback(hObject, eventdata, handles)
% hObject    handle to Edge_to_Edge_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Edge_to_Edge_Spec as text
%        str2double(get(hObject,'String')) returns contents of Edge_to_Edge_Spec as a double


% --- Executes during object creation, after setting all properties.
function Edge_to_Edge_Spec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Edge_to_Edge_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function S11_VSWR_Spec_Callback(hObject, eventdata, handles)
% hObject    handle to S11_VSWR_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S11_VSWR_Spec as text
%        str2double(get(hObject,'String')) returns contents of S11_VSWR_Spec as a double


% --- Executes during object creation, after setting all properties.
function S11_VSWR_Spec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S11_VSWR_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function S22_VSWR_Spec_Callback(hObject, eventdata, handles)
% hObject    handle to S22_VSWR_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S22_VSWR_Spec as text
%        str2double(get(hObject,'String')) returns contents of S22_VSWR_Spec as a double


% --- Executes during object creation, after setting all properties.
function S22_VSWR_Spec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S22_VSWR_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Min_Gain_Max_IL_Spec_Callback(hObject, eventdata, handles)
% hObject    handle to Min_Gain_Max_IL_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Min_Gain_Max_IL_Spec as text
%        str2double(get(hObject,'String')) returns contents of Min_Gain_Max_IL_Spec as a double


% --- Executes during object creation, after setting all properties.
function Min_Gain_Max_IL_Spec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Min_Gain_Max_IL_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Max_Gain_Min_IL_Spec_Callback(hObject, eventdata, handles)
% hObject    handle to Max_Gain_Min_IL_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Max_Gain_Min_IL_Spec as text
%        str2double(get(hObject,'String')) returns contents of Max_Gain_Min_IL_Spec as a double


% --- Executes during object creation, after setting all properties.
function Max_Gain_Min_IL_Spec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Max_Gain_Min_IL_Spec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W1_Amp_Meas_Callback(hObject, eventdata, handles)
% hObject    handle to W1_Amp_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W1_Amp_Meas as text
%        str2double(get(hObject,'String')) returns contents of W1_Amp_Meas as a double


% --- Executes during object creation, after setting all properties.
function W1_Amp_Meas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W1_Amp_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W2_Amp_Meas_Callback(hObject, eventdata, handles)
% hObject    handle to W2_Amp_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W2_Amp_Meas as text
%        str2double(get(hObject,'String')) returns contents of W2_Amp_Meas as a double


% --- Executes during object creation, after setting all properties.
function W2_Amp_Meas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W2_Amp_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Slope_Meas_Callback(hObject, eventdata, handles)
% hObject    handle to Slope_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Slope_Meas as text
%        str2double(get(hObject,'String')) returns contents of Slope_Meas as a double


% --- Executes during object creation, after setting all properties.
function Slope_Meas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Slope_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W1_GD_Meas_Callback(hObject, eventdata, handles)
% hObject    handle to W1_GD_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W1_GD_Meas as text
%        str2double(get(hObject,'String')) returns contents of W1_GD_Meas as a double


% --- Executes during object creation, after setting all properties.
function W1_GD_Meas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W1_GD_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W2_GD_Meas_Callback(hObject, eventdata, handles)
% hObject    handle to W2_GD_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W2_GD_Meas as text
%        str2double(get(hObject,'String')) returns contents of W2_GD_Meas as a double


% --- Executes during object creation, after setting all properties.
function W2_GD_Meas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W2_GD_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W3_GD_Meas_Callback(hObject, eventdata, handles)
% hObject    handle to W3_GD_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W3_GD_Meas as text
%        str2double(get(hObject,'String')) returns contents of W3_GD_Meas as a double


% --- Executes during object creation, after setting all properties.
function W3_GD_Meas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W3_GD_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Max_Var_Meas_Callback(hObject, eventdata, handles)
% hObject    handle to Max_Var_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Max_Var_Meas as text
%        str2double(get(hObject,'String')) returns contents of Max_Var_Meas as a double


% --- Executes during object creation, after setting all properties.
function Max_Var_Meas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Max_Var_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Edge_to_Edge_Meas_Callback(hObject, eventdata, handles)
% hObject    handle to Edge_to_Edge_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Edge_to_Edge_Meas as text
%        str2double(get(hObject,'String')) returns contents of Edge_to_Edge_Meas as a double


% --- Executes during object creation, after setting all properties.
function Edge_to_Edge_Meas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Edge_to_Edge_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function S11_VSWR_Meas_Callback(hObject, eventdata, handles)
% hObject    handle to S11_VSWR_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S11_VSWR_Meas as text
%        str2double(get(hObject,'String')) returns contents of S11_VSWR_Meas as a double


% --- Executes during object creation, after setting all properties.
function S11_VSWR_Meas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S11_VSWR_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function S22_VSWR_Meas_Callback(hObject, eventdata, handles)
% hObject    handle to S22_VSWR_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S22_VSWR_Meas as text
%        str2double(get(hObject,'String')) returns contents of S22_VSWR_Meas as a double


% --- Executes during object creation, after setting all properties.
function S22_VSWR_Meas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S22_VSWR_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Min_Gain_Max_IL_Meas_Callback(hObject, eventdata, handles)
% hObject    handle to Min_Gain_Max_IL_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Min_Gain_Max_IL_Meas as text
%        str2double(get(hObject,'String')) returns contents of Min_Gain_Max_IL_Meas as a double


% --- Executes during object creation, after setting all properties.
function Min_Gain_Max_IL_Meas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Min_Gain_Max_IL_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Max_Gain_Min_IL_Meas_Callback(hObject, eventdata, handles)
% hObject    handle to Max_Gain_Min_IL_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Max_Gain_Min_IL_Meas as text
%        str2double(get(hObject,'String')) returns contents of Max_Gain_Min_IL_Meas as a double


% --- Executes during object creation, after setting all properties.
function Max_Gain_Min_IL_Meas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Max_Gain_Min_IL_Meas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W1_Amp_Compliance_Callback(hObject, eventdata, handles)
% hObject    handle to W1_Amp_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W1_Amp_Compliance as text
%        str2double(get(hObject,'String')) returns contents of W1_Amp_Compliance as a double


% --- Executes during object creation, after setting all properties.
function W1_Amp_Compliance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W1_Amp_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W2_Amp_Compliance_Callback(hObject, eventdata, handles)
% hObject    handle to W2_Amp_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W2_Amp_Compliance as text
%        str2double(get(hObject,'String')) returns contents of W2_Amp_Compliance as a double


% --- Executes during object creation, after setting all properties.
function W2_Amp_Compliance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W2_Amp_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Slope_Compliance_Callback(hObject, eventdata, handles)
% hObject    handle to Slope_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Slope_Compliance as text
%        str2double(get(hObject,'String')) returns contents of Slope_Compliance as a double


% --- Executes during object creation, after setting all properties.
function Slope_Compliance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Slope_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W1_GD_Compliance_Callback(hObject, eventdata, handles)
% hObject    handle to W1_GD_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W1_GD_Compliance as text
%        str2double(get(hObject,'String')) returns contents of W1_GD_Compliance as a double


% --- Executes during object creation, after setting all properties.
function W1_GD_Compliance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W1_GD_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W2_GD_Compliance_Callback(hObject, eventdata, handles)
% hObject    handle to W2_GD_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W2_GD_Compliance as text
%        str2double(get(hObject,'String')) returns contents of W2_GD_Compliance as a double


% --- Executes during object creation, after setting all properties.
function W2_GD_Compliance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W2_GD_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function W3_GD_Compliance_Callback(hObject, eventdata, handles)
% hObject    handle to W3_GD_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W3_GD_Compliance as text
%        str2double(get(hObject,'String')) returns contents of W3_GD_Compliance as a double


% --- Executes during object creation, after setting all properties.
function W3_GD_Compliance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W3_GD_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Max_Var_Compliance_Callback(hObject, eventdata, handles)
% hObject    handle to Max_Var_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Max_Var_Compliance as text
%        str2double(get(hObject,'String')) returns contents of Max_Var_Compliance as a double


% --- Executes during object creation, after setting all properties.
function Max_Var_Compliance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Max_Var_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Edge_to_Edge_Compliance_Callback(hObject, eventdata, handles)
% hObject    handle to Edge_to_Edge_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Edge_to_Edge_Compliance as text
%        str2double(get(hObject,'String')) returns contents of Edge_to_Edge_Compliance as a double


% --- Executes during object creation, after setting all properties.
function Edge_to_Edge_Compliance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Edge_to_Edge_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function S11_VSWR_Compliance_Callback(hObject, eventdata, handles)
% hObject    handle to S11_VSWR_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S11_VSWR_Compliance as text
%        str2double(get(hObject,'String')) returns contents of S11_VSWR_Compliance as a double


% --- Executes during object creation, after setting all properties.
function S11_VSWR_Compliance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S11_VSWR_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function S22_VSWR_Compliance_Callback(hObject, eventdata, handles)
% hObject    handle to S22_VSWR_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S22_VSWR_Compliance as text
%        str2double(get(hObject,'String')) returns contents of S22_VSWR_Compliance as a double


% --- Executes during object creation, after setting all properties.
function S22_VSWR_Compliance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S22_VSWR_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Min_Gain_Max_IL_Compliance_Callback(hObject, eventdata, handles)
% hObject    handle to Min_Gain_Max_IL_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Min_Gain_Max_IL_Compliance as text
%        str2double(get(hObject,'String')) returns contents of Min_Gain_Max_IL_Compliance as a double


% --- Executes during object creation, after setting all properties.
function Min_Gain_Max_IL_Compliance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Min_Gain_Max_IL_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Max_Gain_Min_IL_Compliance_Callback(hObject, eventdata, handles)
% hObject    handle to Max_Gain_Min_IL_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Max_Gain_Min_IL_Compliance as text
%        str2double(get(hObject,'String')) returns contents of Max_Gain_Min_IL_Compliance as a double


% --- Executes during object creation, after setting all properties.
function Max_Gain_Min_IL_Compliance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Max_Gain_Min_IL_Compliance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in SaveAs_Button.
function SaveAs_Button_Callback(hObject, eventdata, handles)
% hObject    handle to SaveAs_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function SaveAs_File_EditBox_Callback(hObject, eventdata, handles)
% hObject    handle to SaveAs_File_EditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SaveAs_File_EditBox as text
%        str2double(get(hObject,'String')) returns contents of SaveAs_File_EditBox as a double


% --- Executes during object creation, after setting all properties.
function SaveAs_File_EditBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SaveAs_File_EditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on button press in Load_Button.
function Load_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Load_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Load specs
specs=load_SpecFile(get(handles.SpecFile_EditBox,'String'));

% Load data
data=load_DataFile(get(handles.DataFile_EditBox,'String'));

% --- Executes on button press in Clear_Button.
function Clear_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Clear_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Clear specs
set(handles.W1_Amp_Spec,'string','')
set(handles.W2_Amp_Spec,'string','')
set(handles.Slope_Spec,'string','')
set(handles.Max_Var_Spec,'string','')

set(handles.W1_GD_Spec,'string','')
set(handles.W2_GD_Spec,'string','')
set(handles.W3_GD_Spec,'string','')
set(handles.Edge_to_Edge_Spec,'string','')

set(handles.S11_VSWR_Spec,'string','')
set(handles.S22_VSWR_Spec,'string','')
set(handles.Min_Gain_Max_IL_Spec,'string','')
set(handles.Max_Gain_Min_IL_Spec,'string','')

% Clear data
set(handles.W1_Amp_Meas,'string','')
set(handles.W2_Amp_Meas,'string','')
set(handles.Slope_Meas,'string','')
set(handles.Max_Var_Meas,'string','')

set(handles.W1_GD_Meas,'string','')
set(handles.W2_GD_Meas,'string','')
set(handles.W3_GD_Meas,'string','')
set(handles.Edge_to_Edge_Meas,'string','')

set(handles.S11_VSWR_Meas,'string','')
set(handles.S22_VSWR_Meas,'string','')
set(handles.Min_Gain_Max_IL_Meas,'string','')
set(handles.Max_Gain_Min_IL_Meas,'string','')

% Clear compliance
set(handles.W1_Amp_Compliance,'string','')
set(handles.W2_Amp_Compliance,'string','')
set(handles.Slope_Compliance,'string','')
set(handles.Max_Var_Compliance,'string','')

set(handles.W1_GD_Compliance,'string','')
set(handles.W2_GD_Compliance,'string','')
set(handles.W3_GD_Compliance,'string','')
set(handles.Edge_to_Edge_Compliance,'string','')

set(handles.S11_VSWR_Compliance,'string','')
set(handles.S22_VSWR_Compliance,'string','')
set(handles.Min_Gain_Max_IL_Compliance,'string','')
set(handles.Max_Gain_Min_IL_Compliance,'string','')

% --- Executes on button press in Create_Button.
function Create_Button_Callback(hObject, eventdata, handles)
% hObject    handle to Create_Button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


function DataFile_EditBox_Callback(hObject, eventdata, handles)
% hObject    handle to DataFile_EditBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of DataFile_EditBox as text
%        str2double(get(hObject,'String')) returns contents of DataFile_EditBox as a double

DataFile_Path=get(handles.DataFile_EditBox,'String');

% Update SpecFile_EditBox handle
set(handles.DataFile_EditBox,'String',DataFile_Path);

guidata(hObject,handles)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


