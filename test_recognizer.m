function test_recognizer(net, img)
    im = imread(img);
    imr = imresize(im, [224, 224]);
    [label, proba] = classify(net, imr);
    if max(proba)>0.5
    imshow(imr);
    title({char(label), num2str(max(proba))});
    else
    imshow(imr);
    title("not recognized");
    end
end