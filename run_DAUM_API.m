%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Title : run_DAUM_API
%
% Description : 
% - 위치 데이터를 입력받아 Daum API인 HTML 파일 형태로 출력
% - Daum API User Key를 할당 받아 사용할 것!
%
% Written by : Jinwoo Jung
% Last updated : 2017/05/24
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
close all;
clc;
format long g
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 사용자 입력값
fprintf('run_DAUM_API   by Jinwoo \n');
% marker
marker_address='http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png';  % basic marker
%marker_address='file:///D:/Matlab_code/ToolBox/DAUM_API/image/P_r.png'; % EX of custom marker
%marker_size=[24 40];
marker_size=[24 40];
% --------------------color HEX code----------------------
%             red : '#FF0000'
%             blue : '#0000FF'
%             green : '#08FF00'
%             yello : '#FAFF00'
%             cyan : '#00FFFF'
% ---------------------------------------------------------
% line
strokeWieght=3; strokeColor='#0000FF'; strokeOpacity=1; strokeStyle='solid';

width=100; height=850; % 웹페이지 크기
cen= [35.689221,   128.466964];% 화면 중심점 좌표

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
interval_marker=1; % 데이터를 출력할 간격 설정, 중요!
interval_line=1; % 데이터를 출력할 간격 설정, 중요!
type=[1 0]; % [marker, line]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

key='85b32471aedcb298d750fe34655600a6'; % Daum API User Key (막히면 바꿔야함!!, by Jinwoo, 17.05.24)

marker_pos=[];line_pos=[];

if isempty(marker_pos)
    marker_pos=load('pos.txt');
end
if isempty(line_pos)
     line_pos=load('pos.txt'); % 읽어올 위치 데이터
 end

fid=fopen('test.html','wt'); % 출력되는 파일명 및 path

%% API 작성
% 헤더 영역 생성
make_header(fid, width, height, cen, key);


if type(1) == 1
    conv4marker(fid, marker_pos(:,1:2),interval_marker);
    att4marker(fid, marker_address, marker_size);
    fprintf('Marker 생성 완료! \n');
end

if type(2) == 1
    conv4line(fid, line_pos(:,1:2), interval_line);
    att4line(fid, strokeWieght, strokeColor, strokeOpacity, strokeStyle );
    fprintf('Line 생성 완료! \n');
end

% end 영역 생성
make_end(fid);
% close file
fclose(fid);
fprintf('Finished! \n');















