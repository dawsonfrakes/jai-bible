#run {
  #import "Basic";
  #import "Compiler";
  #import "String";

  set_build_options_dc(.{do_output=false});

  options := get_build_options();
  options.output_type = .NO_OUTPUT;

  w := compiler_create_workspace();
  set_build_options(options, w);
  compiler_begin_intercept(w);
  add_build_string("", w);

  while true {
    message := compiler_wait_for_message();
    if !message || message.workspace != w continue;
    if message.kind == {
    case .COMPLETE; break;
    case .TYPECHECKED;
      tc := message.(*Message_Typechecked);
      for tc.declarations {
        decl := it.expression;
        file := get_filename(decl);
        // if ends_with(file, "Preload.jai") continue;
        if ends_with(file, "Runtime_Support.jai") continue;
        if ends_with(file, "Default_Allocator/module.jai") continue;
        print("% %\n", file, decl.name);
      }
    }
  }

  compiler_end_intercept(w);
}
