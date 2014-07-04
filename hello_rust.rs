#![crate_type = "staticlib"]
#![no_std]
#![feature(lang_items)]

extern crate core;

// These are stub re-implementations of libcore defenitions.
// Used to supress "_rust_stack_exhausted", referenced from: ___morestack in .."
#[lang = "begin_unwind"]
#[allow(unused_variable)]
extern fn begin_unwind(args: &core::fmt::Arguments, file: &str, line: uint) -> ! {
    loop {}
}
#[lang = "stack_exhausted"] extern fn stack_exhausted() {}
#[lang = "eh_personality"] extern fn eh_personality() {}



#[no_mangle]
pub extern "C" fn hello_rust() -> &str {
	return "Hello world!";
}
