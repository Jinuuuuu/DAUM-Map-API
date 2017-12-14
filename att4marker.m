function att4marker( fid, address, size )
% fid : file id
% address : marker image address ('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png')
% size : marker size [x y] ([20 20])


fprintf(fid, 'var imageSrc = "%s"; \n', address);
fprintf(fid, 'for (var i = 0; i < positions.length; i ++) { \n');
fprintf(fid, 'var imageSize = new daum.maps.Size(%d, %d); \n', size(1), size(2));
fprintf(fid, 'var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); \n');
fprintf(fid, 'var marker = new daum.maps.Marker({   \n');
fprintf(fid, 'map: map, // 마커를 표시할 지도   \n');
fprintf(fid, 'position: positions[i].latlng, // 마커를 표시할 위치  \n');
fprintf(fid, 'title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다 \n');
fprintf(fid, 'image : markerImage // 마커 이미지 \n');
fprintf(fid, ' }); \n');
fprintf(fid, '}  \n');


end

