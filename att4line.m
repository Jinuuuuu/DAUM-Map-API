function att4line(fid, strokeWieght, strokeColor, strokeOpacity, strokeStyle )

% strokeWieght : 선 두께, 3
% strokeColor : '#0000FF'
% strokeOpacity : 1
% strokeStyle : 'solid'

fprintf(fid, 'var polyline = new daum.maps.Polyline({ \n');
fprintf(fid, 'path: linePath, // 선을 구성하는 좌표배열 입니다 \n');
fprintf(fid, 'strokeWeight: %d, // 선의 두께 입니다 \n', strokeWieght);
fprintf(fid, 'strokeColor: ''%s'', // 선의 색깔입니다 \n', strokeColor);
fprintf(fid, 'strokeOpacity: %d, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다 \n', strokeOpacity);
fprintf(fid, 'strokeStyle: ''%s'' // 선의 스타일입니다 \n', strokeStyle);
fprintf(fid, '}); \n');
fprintf(fid, 'polyline.setMap(map) \n');

end
