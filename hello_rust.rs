// #![crate_type = "staticlib"]
// #![no_std]
#![allow(ctypes)]


#[no_mangle]
#[allow(dead_code)]
pub extern "C" fn hello_rust() -> &str {
	return "Hello world!";
}
