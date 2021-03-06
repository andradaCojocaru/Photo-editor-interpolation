function out = nn_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img a.i. aceasta sa fie de dimensiune p x q.
    % Imaginea img este colorata.
    % Practic, apeleaza de 3 ori functia nn pe fiecare canal al imaginii.
    % =========================================================================

    % TODO: extrage canalul rosu al imaginii
    r = img(:, :, 1);
    % TODO: extrage canalul verde al imaginii
    g = img(:, :, 2);
    % TODO: extrage canalul albastru al imaginii
    b = img(:, :, 3);
    % TODO: aplica functia nn pe cele 3 canale ale imaginii
    mat_r = nn_resize(r, p, q);
    mat_g = nn_resize(g, p, q);
    mat_b = nn_resize(b, p, q);
    % TODO: formeaza imaginea finala cu cele 3 canale de culori
    % Hint: functia cat
    out = cat(3, mat_r, mat_g, mat_b);
endfunction
