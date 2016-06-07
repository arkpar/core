import 'thesaurus/KProcess.sol';

library CreatorKProcess {
    event Created(address indexed sender, address indexed instance);

    function create() returns (KProcess) {
        var inst = new KProcess();
        Created(msg.sender, inst);
        return inst;
    }

    function version() constant returns (string)
    { return "v0.4.0 (943677)"; }

    function abi() constant returns (string)
    { return '[{"constant":false,"inputs":[{"name":"_owner","type":"address"}],"name":"delegate","outputs":[],"type":"function"},{"constant":true,"inputs":[{"name":"_to","type":"address"}],"name":"isEqual","outputs":[{"name":"","type":"bool"}],"type":"function"},{"constant":true,"inputs":[],"name":"owner","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_index","type":"uint256"}],"name":"get","outputs":[{"name":"","type":"address"}],"type":"function"},{"constant":false,"inputs":[{"name":"_knowledge","type":"address"}],"name":"append","outputs":[],"type":"function"},{"constant":true,"inputs":[],"name":"morphismLength","outputs":[{"name":"","type":"uint256"}],"type":"function"},{"constant":true,"inputs":[],"name":"knowledgeType","outputs":[{"name":"","type":"int256"}],"type":"function"},{"inputs":[],"type":"constructor"}]'; }
}
