function conv4marker(fid, pos, interval )

% pos : [lat lon] (n by 2)
% interval : 출력될 데이터의 인터벌
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf(fid,'var positions = [ \n');

%get length
len=size(pos, 1);
for i=1:interval:len
    if i == len
        fprintf(fid,'{ latlng: new daum.maps.LatLng(%f,   %f) }\n',pos(i,1).',pos(i,2).');
    else
        fprintf(fid,'{ latlng: new daum.maps.LatLng(%f,   %f) },\n',pos(i,1).',pos(i,2).');
    end
       
end

fprintf(fid,'];  \n');


end

