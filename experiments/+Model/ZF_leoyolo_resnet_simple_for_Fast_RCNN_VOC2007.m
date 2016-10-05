function model = ZF_leoyolo_resnet_simple_for_Fast_RCNN_VOC2007(model)

model.solver_def_file        = fullfile(pwd, 'models', 'fast_rcnn_prototxts', 'ZF_leoyolo_resnet_simple', 'solver_30k60k.prototxt');
model.test_net_def_file      = fullfile(pwd, 'models', 'fast_rcnn_prototxts', 'ZF_leoyolo_resnet_simple', 'test.prototxt');

model.net_file               = fullfile(pwd, 'models', 'pre_trained_models', 'ZF', 'ZF.caffemodel');
model.mean_image             = fullfile(pwd, 'models', 'pre_trained_models', 'ZF', 'mean_image');

end
