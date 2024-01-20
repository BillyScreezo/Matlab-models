 %
 % Copyright (C) 2024 Kirill Turintsev <billiscreezo228@gmail.com>
 % See LICENSE file for licensing details.
 %
 % This file contains M-seq generator
 %

function [ M ] = Mfun( A, C )

    len = length(C);
    Msize = 2 ^ len - 1;
    shRg = A;
    preM = zeros(1, Msize); % M-sequence [0;1]

    for i = 1 : 1 : Msize % M-sequence formation
        tmpArr = shRg .* C;

        Ak = reductionXOR(tmpArr);
        
        preM(i) = shRg(len);

        shRg = shnumf(shRg, 'right', Ak);

    end
    
    M = preM;

end

