

class dff_agent extends uvm_agent;
`uvm_component_utils(dff_agent)

dff_driver drv;
dff_monitor mon;
dff_sequencer seqr;

    function new(string name = "dff_agent", uvm_component parent);
        super.new(name, parent);
        `uvm_info("Agent Class", "Constructor", UVM_MEDIUM)
    endfunction //new()

    // Build phase
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        drv = dff_driver::type_id::create("dff_driver", this);
        mon = dff_monitor::type_id::create("dff_monitor", this);
        seqr = dff_sequencer::type_id::create("dff_sequencer",this);
    endfunction
endclass //dff_agent extends superClass