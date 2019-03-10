function fcfs(n_head) {
    var result = [];
    var cylinder = 0;
    result.push(n_head);
    for(var i=0; i<queue.length;i++){
        cylinder = cylinder + Math.abs(result[i] - queue[i])
        result.push(queue[i]);
    }
    console.log("===============================")
    console.log("Head start at ",n_head);
    console.log("FCFS Result : ",result);
    console.log("FCFS Total head movement : ",cylinder,"Cylinder");
    console.log("FCFS Seek time : ",cylinder*6," ms")
    console.log("===============================")
}