 %
 % Copyright (C) 2024 Kirill Turintsev <billiscreezo228@gmail.com>
 % See LICENSE file for licensing details.
 %
 % This file contains function for reductionXOR op
 %

function [ xor_result ] = reductionXOR( arr )
    xor_result = mod(sum(arr), 2);
end

