function peaks = mypeaks(H,numpeaks)
peaks=zeros(numpeaks,2);
num=0;
nHoodSize=floor(size(H) / 100)*2+1;
while(num<numpeaks)
    maxH = max(H(:));
    if(maxH>=150)
        num=num+1;
        [r,c]=find(H==maxH);
        peaks(num,:)=[r(1),c(1)];
        rStart = max(1, r - (nHoodSize(1) - 1) / 2);
            rEnd = min(size(H,1), r + (nHoodSize(1) - 1) / 2);
            cStart = max(1, c - (nHoodSize(2) - 1) / 2);
            cEnd = min(size(H,2), c + (nHoodSize(2) - 1) / 2);
            for i = rStart : rEnd
                for j = cStart : cEnd
                        H(i,j) = 0;
                end
            end
    else
        break;
    end
end

end