function cscan(n_head) {
    var position = n_head;
    var result = [];
    var cylinder = 0,end=200,start=0;
    result.push(n_head);
    
    for(i=position;i<end;i++){
        var found = queue.find(function(element) {
            return element == i;
          });
        if(i==found){
            cylinder = cylinder + Math.abs(position - i);
            position = i;
            result.push(i)
        }
        
    }
    cylinder = cylinder + Math.abs(position-end)
    position=end
    for(i=start;i<n_head;i++){
        if(i==start){
            cylinder = cylinder + Math.abs(position-start);
            position=start;
        }
        var found = queue.find(function(element) {
            return element == i;
          });
        if(i==found){
            cylinder = cylinder + Math.abs(position - i);
            position = i;
            result.push(i)
        }
        
    }
    console.log("===============================")
    console.log("Head start at ",n_head);
    console.log("CSCAN Result : ",result);
    console.log("CSCAN Total head movement : ",cylinder," Cylinder");
    console.log("CSCAN Seek time : ",cylinder*6," ms")
    console.log("===============================")
}