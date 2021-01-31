function varargout = homework1(varargin)
% HOMEWORK1 MATLAB code for homework1.fig
%      HOMEWORK1, by itself, creates a new HOMEWORK1 or raises the existing
%      singleton*.
%
%      H = HOMEWORK1 returns the handle to a new HOMEWORK1 or the handle to
%      the existing singleton*.
%
%      HOMEWORK1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in HOMEWORK1.M with the given input arguments.
%
%      HOMEWORK1('Property','Value',...) creates a new HOMEWORK1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before homework1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to homework1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help homework1

% Last Modified by GUIDE v2.5 25-Oct-2020 13:06:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @homework1_OpeningFcn, ...
                   'gui_OutputFcn',  @homework1_OutputFcn, ...
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


% --- Executes just before homework1 is made visible.
function homework1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to homework1 (see VARARGIN)

% Choose default command line output for homework1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes homework1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = homework1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function input_edit_Callback(hObject, eventdata, handles)
% hObject    handle to input_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_edit as text
%        str2double(get(hObject,'String')) returns contents of input_edit as a double




%       ------------------------------------------------------------------------
%  ---------------------------------------------------------------------------------YORUM
if(strcmp(get(gcf,'currentkey'),'return')) % Enter tusuna basildiysa draw_first_axis(handles)
                                            % fonksiyonunu cagir. Bu
                                            % fonksiyon ilk axis gerekli
                                            % verileri stem ile cizdirir.
    draw_first_axis(handles);
end



    
% --- Executes during object creation, after setting all properties.
function input_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function input_start_edit_Callback(hObject, eventdata, handles)
% hObject    handle to input_start_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_start_edit as text
%        str2double(get(hObject,'String')) returns contents of input_start_edit as a double




%       ------------------------------------------------------------------------
%  ---------------------------------------------------------------------------------YORUM
if(strcmp(get(gcf,'currentkey'),'return')) % Enter tusuna basildiysa draw_first_axis(handles)
                                            % fonksiyonunu cagir. Bu
                                            % fonksiyon ilk axis gerekli
                                            % verileri stem ile cizdirir.
    draw_first_axis(handles);
end


% --- Executes during object creation, after setting all properties.
function input_start_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_start_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function impulse_edit_Callback(hObject, eventdata, handles)
% hObject    handle to impulse_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of impulse_edit as text
%        str2double(get(hObject,'String')) returns contents of impulse_edit as a double



%       ------------------------------------------------------------------------
%  ---------------------------------------------------------------------------------YORUM
if(strcmp(get(gcf,'currentkey'),'return')) % Enter tusuna basildiysa draw_second_axis(handles)
                                            % fonksiyonunu cagir. Bu
                                            % fonksiyon ikinci axis gerekli
                                            % verileri stem ile cizdirir. 
    draw_second_axis(handles);
end

% --- Executes during object creation, after setting all properties.
function impulse_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to impulse_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function impulse_start_edit_Callback(hObject, eventdata, handles)
% hObject    handle to impulse_start_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of impulse_start_edit as text
%        str2double(get(hObject,'String')) returns contents of impulse_start_edit as a double



%       ------------------------------------------------------------------------
%  ---------------------------------------------------------------------------------YORUM
if(strcmp(get(gcf,'currentkey'),'return'))% Enter tusuna basildiysa draw_second_axis(handles)
                                            % fonksiyonunu cagir. Bu
                                            % fonksiyon ikinci axis gerekli
                                            % verileri stem ile cizdirir.
    draw_second_axis(handles);
end


% --- Executes during object creation, after setting all properties.
function impulse_start_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to impulse_start_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function calculate_convolution(handles)
% Bu fonksiyon impulse response'u ve input signal'i al?p convolution'?
% hesaplar ve 3. axis'e bunu cizdirir
% Variable'lar? global olarak tan?mlad?m ki her yerde ayn? olsunlar.
global input_signal;
global impulse_signal;
global out_signal;
global start_value;
global counter;
counter = 0; % Burada counter'? 0 yap?yorum. Step Step konvolisyon 
% bu counter'? kulland?m. Her seferinde 1 artt?rarak tersine çevirdi?im
% impulse response'?n x eksenini ayarlamada kulland?m.

% Burada 3.eksenin ilk ba?lang?ç de?erini start value ile ayn? yapt?m.
start_axis3_value = start_value;


out_signal = conv(input_signal,impulse_signal); % Konvolusyonu yapt?m.

% Output eksenini çizdirdim.
out_axis = [start_axis3_value:(start_axis3_value + length(out_signal) -1)];

%3.axes'i odaklad?m.
axes(handles.axes3);
stem(out_axis,out_signal,'filled'); % Çizimi yapt?rd?m.
ax = gca; % Güncel ekseni ax'e atad?m ki ayarlama yapabileyim.
ax.XLim = [out_axis(1)-1 out_axis(length(out_axis))+1]; % X eksenini 
% output sinyaline göre ba?lang?c?n? bir birim önce sonunuda bir birim
% sonra olarak ayarlad?m.



function draw_first_axis(handles)
%Bu fonksiyon ilk ekseni çizdiriyor ve mümkünse Konvolusyon' ald?r?yor.
global start_value;
global impulse_signal;
global input_signal;
global input_axis;
global start_impulse_value;
start_value = str2num(get(handles.input_start_edit,'string'));
input_signal = str2num(get(handles.input_edit,'string'));
impulse_signal = str2num(get(handles.impulse_edit,'string'));
start_impulse_value = str2num(get(handles.impulse_start_edit,'string'));

% E?er birisi ilk de?eri bir vektör olarak girerse veya hiç girmezse hata 
% vermesi için burda if'li yap?y? kulland?m.
if length(start_value) ~= 1
    msgbox('Start Value must be a decimal number!!!','Start Value Error'); % Hata ver
return; % Fonksiyondan ç?k
end

%Ayn? ?ekilde input sinyalini girmezse hata vermesi için if'li yap?
%kulland?m.
if length(input_signal) < 1
    msgbox('Input Signal must be a vector'); % Hata ver
    input_signal = []; % Input sinyalini bo? bir vektör yap
    return; % Fonksiyondan ç?k
end

%Input eksenini hesaplatt?m. Girilen ilk de?erden ilk de?er + sinyal
%uzunlu?u -1'e kadar olmas? gereklidir.
input_axis = [start_value:(start_value + length(input_signal) -1)];

%?lk axes'i odaklad?m.
axes(handles.axes1);
stem(input_axis,input_signal,'filled');
ax = gca;  % Güncel ekseni ax'e atad?m ki ayarlama yapabileyim.
ax.XLim = [input_axis(1)-1 input_axis(length(input_axis))+1];% X eksenini 
% input sinyaline göre ba?lang?c?n? bir birim önce sonunuda bir birim
% sonra olarak ayarlad?m.

%E?er impulse signal girilmi?se ve input sinyalide girilmi?se konvolusyonu
% hesaplamas? ve çizdirmesi için calculate_convolution fonksiyonuna
% yollad?m.
if length(impulse_signal) > 0 && length(input_signal) > 0
    calculate_convolution(handles);
end


function draw_second_axis(handles)
%Bu fonksiyon draw_first_axis(handles) fonksiyonunun birebir ayn?s?d?r
%Sadece input yerine impulse sinyali için yap?lm??t?r. Gerekli aç?klamay?
%draw_first_axis(handles) fonksiyonunda belirttim.

global start_impulse_value;
global start_value;
global input_signal;
global impulse_signal;
global impulse_axis;
start_value = str2num(get(handles.input_start_edit,'string'));
input_signal = str2num(get(handles.input_edit,'string'));
impulse_signal = str2num(get(handles.impulse_edit,'string'));
start_impulse_value = str2num(get(handles.impulse_start_edit,'string'));
if length(start_impulse_value) ~= 1
    msgbox('Start Value must be a decimal number!!!','Start Value Error');
    return;
end
if length(impulse_signal) < 1
    msgbox('Impulse Signal must be a vector!');
    impulse_signal = [];
    return;
end
impulse_axis = [start_impulse_value:(start_impulse_value + length(impulse_signal) -1)];
axes(handles.axes2); 
stem(impulse_axis,impulse_signal,'filled');
ax = gca;
ax.XLim = [impulse_axis(1)-1 impulse_axis(length(impulse_axis))+1];
if length(impulse_signal) > 0 && length(input_signal) > 0
    calculate_convolution(handles);
end


% --- Executes on button press in convolve_step.
function convolve_step_Callback(hObject, eventdata, handles)
% hObject    handle to convolve_step (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Bu fonksiyonda her convolve step butonuna bas?ld???nda convolusyon ad?m
% ad?m ilerlemektedir.

global input_signal;
global impulse_signal;
global start_value;
global start_impulse_value;
global counter;
global new_out;

% counter 0 ise demekki ilk defa t?klan?lm??t?r. Output sinyalimiz
% Bo? bir vektör olmal?d?r.
if counter == 0
    new_out = [];
end

% Input ve Impulse sinyallerini ba?lang?ç de?erlerini güncelledim.
start_value = str2num(get(handles.input_start_edit,'string'));
input_signal = str2num(get(handles.input_edit,'string'));
impulse_signal = str2num(get(handles.impulse_edit,'string'));
start_impulse_value = str2num(get(handles.impulse_start_edit,'string'));

% h[-k] yapabilmek için mevcut impulse sinyalini flip yapt?m.
new_impulse = flip(impulse_signal);

%Impulse eksenini input eksenini hesaplatt?m. Girilen ilk de?erden ilk de?er + sinyal
%uzunlu?u -1'e kadar olmas? gereklidir.
impulse_axis = [start_impulse_value:(start_impulse_value + length(impulse_signal) -1)];
input_axis = [start_value:(start_value + length(input_signal) -1)];

% Burada Konvolusyonu bir daha yapt?rd?m ki konvolusyon eksenini
% hesaplayabiliyim ve buna görede x eksenlerini limitleyebileyim.
if start_value <= start_impulse_value
    start_axis3_value = start_value;
else
    start_axis3_value = start_impulse_value;
end
out_signal = conv(input_signal,impulse_signal);
out_axis = [start_axis3_value:(start_axis3_value + length(out_signal) -1)];
axes(handles.axes2);
new_imp_start = input_axis(1) - length(new_impulse);

%Burada impulse eksenini hesaplatt?m. Bu eksen global olmamal? çünkü
%her butona t?kland???nda zaten counter artacak ve buna eklenip impulse
%için yeni impulse eksenini olu?turacakt?r.
new_impulse_axis = [new_imp_start:(new_imp_start + length(new_impulse) -1)];

% Yeni impulse eksenini olu?turmadan önce eksenleri limitlemek için new
% axis variable'?na impulse eksenini atad?m.
new_axis = new_impulse_axis;

% Butona t?klanma durumuna göre yeni impulse eksenini olu?turdum.
new_impulse_axis = new_impulse_axis + counter;

%Yeni flip edilmi? impulse response'? çizdirdim.
stem(new_impulse_axis,new_impulse,'filled');

% Buradaki iç içe geçmi? yap?da Input sinyalinin ekseni ile Flip edilmi?
% impulse sinyalinin eksenleri kar??la?t?r?lmaktad?r. E?er ayn? de?erler
% ç?karsa yani flip edilmi? impulse sinyali ile input sinyali üst üste
% bindi?i durumlar oldu?unda gerekli olan noktalar çarp?l?yor ve hold_var
% diye bir vektörün içine aktar?l?yorlar. E?er hiç çak??ma olmazsa hold_var
% bo? bir vektör olarak kal?yor.
k = 1;
hold_var = [];
for i = input_axis
    l = 1;
    for j = new_impulse_axis
        if i == j
            hold_var = [hold_var, input_signal(k) * new_impulse(l)];
            break;
        end
        l= l + 1;
    end
    k = k + 1;
end

%E?er input sinyali ile flip edilmi? impulse sinyali çak??t?ysa hold_var da
% çak??t?klar? noktalar?n çarp?m de?erleri olacakt?r. Bunu if ile kontrol
% ettim ve olduysa Yeni output sinyalinin içine  yeni bir element olara 
% bu çarp?mlar?n toplam?n? aktard?m. Ama çak??ma olmad?ysa o zaman yeni
% output sinyaline 0 aktarmak gerekli oldu?unda else yap?s?nda bunu yapt?m.
% Hem if yap?s?nda hemde else yap?s?nda yeni output eksenini, olu?an output
% sinyaline göre hesaplad?m. Konvolusyonu çak??mayan ilk noktadan yani
% birbirleri ile çak??malar?n?n bir öncesi noktadan ba?latt???mdan dolay?,
% ilk sinyal input_ekseninin bir eksi?i olarak ald?m. HAliyle son
% sinyali'de 1 ç?karmam gerekirken 2 ç?karmam gerekti.
if length(hold_var) > 0
    new_out = [new_out, sum(hold_var)];
    new_out_axis = [input_axis(1)-1:(input_axis(1)+ length(new_out)-2)];
else
    new_out = [new_out,0];
    new_out_axis = [input_axis(1)-1:(input_axis(1)+ length(new_out)-2)];
end

%Burada 3 axes'inde x eksenlerini limitleyip ayn? yapt?m. Amac?m hepsinde
%noktalar?n senkronize olmas?yd?. Bu ?ekilde konvolusyan daha net
%gözükebiliyor.
ax = gca;
ax.XLim = [new_axis(1)-1 out_axis(length(out_axis))+1];
axes(handles.axes1);
ax = gca;
ax.XLim = [new_axis(1)-1 out_axis(length(out_axis))+1];
axes(handles.axes3);
stem(new_out_axis,new_out,'filled');
ax = gca;
ax.XLim = [new_axis(1)-1 out_axis(length(out_axis))+1];
% Ve counter'? 1 artt?rd?m.
counter = counter + 1;
