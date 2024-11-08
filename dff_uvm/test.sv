// test class: UVM component class
class dff_test extends uvm_test; // uvm_test is the base test class
    `uvm_component_utils(dff_test) // register dff_test class to the uvm factory
    
    // Instantiate a constr for env function to be used 
    dff_env env;
    
    // Start the standard constructor. (name of the class, parent)
    function new(string name = "dff_test", uvm_component parent);
        super.new(name, parent);
        `uvm_info("Test class", "Constructor", UVM_MEDIUM)
    endfunction //new()

    // Start to write the build phase
    function void buil_phase(uvm_phase phase);
        super.build_phase(phase);
        // create our lower modules/components
        // Inside test class we have env for example
        env == dff_env::type_id::create("env", this);
    endfunction


endclass //dff_test extends superClass
