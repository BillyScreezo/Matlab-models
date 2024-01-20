 %
 % Copyright (C) 2024 Kirill Turintsev <billiscreezo228@gmail.com>
 % See LICENSE file for licensing details.
 %
 % This file contains M-seq range convertor [0;1] -> [1:-1]
 %

function [ Mseq_conv ] = convMseq( Mseq ) % transformation 0 -> 1, 1 -> -1

    tmpOnes = ones(1, length(Mseq));
    
    tmpOnes(Mseq == 1) = -1;
    
    Mseq_conv = tmpOnes; % [1;-1]

end

