self: super: {
  gdb = super.gdb.override {pythonSupport = false; };
}
