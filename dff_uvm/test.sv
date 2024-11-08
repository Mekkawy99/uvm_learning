// test class: UVM component class
class dff_test extends uvm_test; // uvm_test is the base test class
    `uvm_component_utils(dff_test) // register dff_test class to the uvm factory
    // Start the standard constructor. (name of the class, parent)
    function new(string name = "dff_test", uvm_component parent);
        super.new(name, parent);
        `uvm_info("Test class", "Constructor", UVM_MEDIUM)
    endfunction //new()
endclass //dff_test extends superClass
