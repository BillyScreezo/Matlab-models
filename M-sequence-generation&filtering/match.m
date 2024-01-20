 %
 % Copyright (C) 2024 Kirill Turintsev <billiscreezo228@gmail.com>
 % See LICENSE file for licensing details.
 %
 % This file contains function for matched filtering
 %


function [ sg_compress ] = match( sg, of )
    
    lenOF = length(of);
    lenSG = length(sg);
    
    len = lenOF;
    
    sgTmp = sg;
    ofTmp = of;
    
    if(lenOF > lenSG)
        sgTmp = [sg, zeros(1, lenOF - lenSG - 1)];
        len = lenOF - 1;
    else if(lenSG > lenOF)
        ofTmp = [of, zeros(1, lenSG - lenOF - 1)];
        len = lenSG - 1;
        end
    end
    
    shRg = zeros(1, len);
    
    sg_compress = zeros(1, len);
    
    for i = 1 : 1 : 2 * len
        
        sg_compress(i) = sum(shRg .* ofTmp);
        
        shRg = shnumf(shRg, 'left', sgTmp(1));
        
        sgTmp = shnumf(sgTmp, 'left', 0);
        
    end

end

