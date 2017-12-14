function att4marker( fid, address, size )
% fid : file id
% address : marker image address ('http://i1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png')
% size : marker size [x y] ([20 20])


fprintf(fid, 'var imageSrc = "%s"; \n', address);
fprintf(fid, 'for (var i = 0; i < positions.length; i ++) { \n');
fprintf(fid, 'var imageSize = new daum.maps.Size(%d, %d); \n', size(1), size(2));
fprintf(fid, 'var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); \n');
fprintf(fid, 'var marker = new daum.maps.Marker({   \n');
fprintf(fid, 'map: map, // ��Ŀ�� ǥ���� ����   \n');
fprintf(fid, 'position: positions[i].latlng, // ��Ŀ�� ǥ���� ��ġ  \n');
fprintf(fid, 'title : positions[i].title, // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ� \n');
fprintf(fid, 'image : markerImage // ��Ŀ �̹��� \n');
fprintf(fid, ' }); \n');
fprintf(fid, '}  \n');


end

