% read training set into shape vocabulary
function build_vocab_shapeme( ...
   train, ...
   ftype)

% read features, add to database
for n = 1:length(train.filenames)
   msg = ['added training file ' num2str(n) ' of ' num2str(length(train.filenames)) ' to shape vocab'];
   % load exemplar
   [features, x_pos, y_pos] = load_exemplar(train.filenames{n}, ftype);
   % add exemplar to database
   mex_shapeme_db( ...
      'add_exemplar_to_vocab', ...
      features', ...
      x_pos, ...
      y_pos ...
   );
   disp(msg);
end
