 %
 % Copyright (C) 2024 Kirill Turintsev <billiscreezo228@gmail.com>
 % See LICENSE file for licensing details.
 %
 % This file contains function for shifting an array with the ability to add a number
 %
 
function [ sh_res ] = shnumf( arr, direction, shnum )
    if(strcmp(direction, 'right'))
        sh_res = circshift(arr, [0, 1]);
        sh_res(1) = shnum;
    elseif(strcmp(direction, 'left'))
        sh_res = circshift(arr, [0, -1]);
        sh_res(length(sh_res)) = shnum;
    end
end

