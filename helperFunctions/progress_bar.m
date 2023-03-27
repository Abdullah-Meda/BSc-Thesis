
function bar = progress_bar(progress, text)
    bar = [repmat('█', 1, floor(progress*20)), repmat('░', 1, 20 - floor(progress*20))];
    bar = sprintf('[%s] %s', bar, text);
end