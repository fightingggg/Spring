<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cafe</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
</head>
<style>
    
    body{
        font-size: 20px;
    }
    select{
        width: 200px;
        height: 200px;
        font-size: 17px;
        
    }
    input, button{
        font-size: 25px;
    }
    table{
        color: aliceblue;
        background-color: black;
    }
    .line{
        
        background-color: skyblue;
    }
    button{
        background-color: gray;
        color: aliceblue;
    }
    .headsize{
        height: 100px;
        background-color: skyblue
    }
    .bodysize{
        height: 300px;
        width: 300px;
        background-color: rgb(243, 247, 247);
        
    }
    #final{
    
    	font-size:10px;
    
    }

</style>
<body style="background-color: black;">
    <table style="width: 100%; height: 880px;" align="center" border="70">
        <tr>
            <td colspan="3" style="text-align: center; color: black; background-color: skyblue; font-family:Georgia, 'Times New Roman', Times, serif ">
                <h1>카페관리</h1></td>
        </tr>
        <tr>
            <td valign="top" align="center" class="line" valign="middle">
                <table class="line">
                    <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr align="center" valign="middle"  class="headsize">
                    <td  colspan="2" ><h2>메뉴목록</h2></td>
                </tr>
                <td colspan=2 valign="bottom">
                    <select id=mlist size="11" class="bodysize" style="text-align:center" style="font-size:150px" >
                    
                    </select>
                </td>
                </tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr></tr>
                    <td>메뉴명</td><td><input type=text id="name" name="name" readonly style="width: 120px;"></td>
                </tr>
                <tr>
                    <td>수량</td><td><input type="number" id="quantity" name="quantity" style="width: 120px;" value="1">잔</td>
                </tr>
                <tr>
                    <td></td><td><input type="number" id="price" readonly style="width: 120px;">원</td>
                </tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><tr><td></td></tr><tr></tr><tr><td></td></tr><tr></tr>
                <tr>
                <tr align="center">
                    <td colspan="2"><button id="btnS">주문</button>
                    <button id="btnR">지우기</button>
                    <button id='read_menu'>메뉴관리</button></td>
                </tr>
                </table>
           </td>
           <td valign="top" align="center" class="line">
                <table class="line">
                    <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                    <tr align="center" class="headsize">
                        <td colspan="2"><h2>주문내역</h2></td></tr>
                    <tr>
                        <td colspan="2" class="bodysize">
                            <select id="orderbox" size="11" class="bodysize">
                            </select>
                        </td>
                    </tr>
                    <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                    <tr>
                        <td>주문금액</td><td><input type="number" id="orderprice" readonly style=" width: 100px;">원</td>
                    </tr>
                    <tr>
                        <td>모바일번호</td><td><input type="text" id="mobile" name="mobile" style="width: 100px;"></td>
                    </tr>
                    <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr>
                    <tr align="center">
                        <td colspan="2"><button id="btnO">주문완료</button>
                        <button id="btnC">취소</button></td>
                    </tr>
                </table>
           </td>
           <td valign="top" align="center" class="line">
                <table class="line">
                    <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                    <tr align="center" class="headsize">
                        <td><h2>매출내역</h2></td>
                    </tr>
                        <tr>
                            <td>
                                <select  id="final" size="20" class="bodysize">
                                </select>
                            </td>
                        </tr>
                        <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr>
                        <tr align="center">
                            <td>매출총액 &nbsp;&nbsp;<input type="text" id="totalsales" name="totalsales" style="width: 100px;"></td>
                        </tr>
                        <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
                <tr><td></td></tr><tr><td></td></tr>
                        <tr align="center">
                            <td><button id="buttonref">새로고침</button></td>
                        </tr>
                    </table>
           </td>
           </td>
        </tr>
        <tr style="background-color: rgb(10, 2, 2); color: rgb(243, 241, 241); font-size: 2ch;">
            
            <td colspan="3" align="Right">
               Created
               by
            </td>
        </tr>
    </table>
    
    
<!--   
<div id=menu>
    <table>
    <select id=t_list>
    
    </select>
<tr><td>메뉴명</td><td><input type=text id=name>
							<input type=text id=s_no></td></tr>
<tr><td></td><td><input type =number id=price></td></tr>
<tr><td colspan=2 align=center>
	<button id=btnAdd>등록</button>
	<button id=t_reset>비우기</button>
	<button id=btnDelete>삭제</button>
	<button id=btnsave>저장하기</button>
	</td></tr>
</table>
</div>
 --> 
 
 
 
 <!--               다이얼로그 영역                 -->
 <div id=menu>
  <table id=list>
  <tr> <th>일련번호</th> <th>메뉴명</th> <th>가격</th> </tr>
  </table>
  
  <table>
  <tr><td>일련번호</td> <td><input type=number id=seq readonly></td> </tr>
  <tr><td>메뉴명</td> <td><input type=text id=newname></td> </tr>
  <tr><td>가격</td> <td><input type=number id=newprice></td> </tr>
  <tr>
  	<td><button id=newAdd>등록/수정</button></td> 
  	<td><button id=newDelete>삭제</button>
  	<button id=newEmpty>비우기</button></td> 
  </tr>
  </table>
  
  
 </div>
 
 
 
 
 
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
<script>

//  $.ajax({url:'/menu_update'
// 	data:{s_no:$('#s_no').val(),name:$('#name').val(),price:$('#price').val()},
// 	type:'post',dataType:'text'
// 	beforeSend:function(){
		
// 	},
	
// 	success:function(data){
		
// 	}
//  })
  
  
  
  
  
  
total=0;
totals=0;
$(document)  //(1)
.on('click','#mlist option',function(){
    str=$(this).text();
    ar=str.split(',');
    ar[0]=ar[0].trim();
    ar[1]=ar[1].trim();
    $('#name').val(ar[0]);
    $('#price').val(ar[1]);
    
}) //(2)
.on('change','#quantity',function(){
    count=$('#quantity').val();
    $('#price').val(ar[1]*count);
})
.on('click','#btnR',function(){ //(3)
    $('#name').val('');
    $('#price').val('');
    $('#quantity').val(1);
})

.on('click','#btnS',function(){//(4)
    if($('#name').val()==''||$('#price').val()==''||$('#quantity').val()==''){
        return false;
    }
    
    n=' 메뉴 '+$('#name').val();
    p='가격 '+$('#price').val();
    q=' 수량 '+$('#quantity').val();
    $('#orderbox').append('<option id="menuboxxx" name="menubox">'+n+p+q+'</option>');
    $('#btnR').trigger('click');
    arp=p.split(' ');
    arp[1]=parseInt(arp[1]);
    total=total+arp[1];
    console.log(total);
    $('#orderprice').val(total); // 주문금액
})

.on('click','#btnC',function(){
    $('#orderprice').val('');
    $('#mobile').val('');
    $('#totalsales').val(totals); //매출총액
    while(($('#menuboxxx').length)){
    $('#menuboxxx').remove();
    }
    total=0;
})

.on('click','#btnO',function(){
	for(var i=0;i<$('#orderbox option').length; i++){
		
		str = $('#orderbox').find('option:eq('+i+')').text();
		str = str.replace("메뉴 ","").replace("가격 ", ",").replace(" 수량 ",",");
		alert(str)   // String str = "mocca,3000,1";
					 // String[]array = str.split(","); >> {"mocca", "3000", "1"}
		array = str.split(",")
	
		name = array[0]; 
		price = parseInt(array[1]);
		qty = parseInt(array[2]);
		mobile= $("#mobile").val();
		
		    // 클라이언트에서 서버로 보낼떄는 data , 클라이언트가 서버든 db든 받을때는 dataType!
		$.ajax({url:'/sales_insert', type:'post', dataType:'text', 			
			data:{mobile:mobile,name:name , price:price, qty:qty}, //(key값:value값)
			success:function(data){
				alert(data);
			}
			
		})
		
	
	}
	
	$("#btnC").trigger('click') // trigger tag의 이벤트 발생
    setTimeout(function(){refreshSales()},100)
	
//     if($('#orderprice').val()==''){
//         return false;
//     }
//     let today = new Date();
//     year= today.getFullYear()+'년 ';
//     month = today.getMonth()+1+'월 ';
//     date = today.getDate()+'일 ';
//     hour = today.getHours()+'시 ';
//     minute = today.getMinutes()+'분 ';
//     second = today.getSeconds()+'초 ';
//     time=year+month+date+hour+minute+second
//     new Date();
//     t='주문금액 '+$('#orderprice').val()+'원';
//     number='모바일번호 '+$('#mobile').val();
//     $('#final').append('<option id="menuboxx" name="menubox">'+time+'</option>');
//     $('#final').append('<option id="menuboxx" name="menubox">'+t+'</option>');
    
//     if(!$('#mobile').val()==''){
//         $('#final').append('<option id="menuboxx" name="menubox">'+number+'</option>');
//     }
    
//     if($('#mobile').val()==''){
//         $('#final').append('<option id="menuboxx" name="menubox">적립번호가 없습니다.</option>');
//     }
    
//     $('#orderprice').val('');
//     $('#mobile').val('');
//     $('#final').append('<option id="menuboxx" name="menubox"></option>');
//     $('#btnC').trigger('click');
//     arp=t.split('주문금액 ');
//     arp[1]=parseInt(arp[1]);
//     totals=totals+arp[1];
//     console.log(totals);
//     $('#totalsales').val(totals);
//     total=0;
    
})

.on('click','#buttonref',function(){
    while($('#menuboxxx').length){
    $('#menuboxxx').remove();
    }
    while($('#menuboxx').length){
        $('#menuboxx').remove();
        }
    $('#orderprice').val('');
    $('#mobile').val('');
    total=0;
    $('#totalsales').val('');
    totals=0;
})
    
    
//     .on('click','#read_menu',function(){

//     $('#t_list').empty();

//     for(i=0;i< $('#menu option').length; i++){

//         r_value = $('#menu option').eq(i).val()
//         r_name = $('#menu option').eq(i).text()
//         str = '<option value=' + r_value + '>' + r_value +", "+r_name + "</option>"
//         $('#t_list').append(str);
//     }        


    
//     $('#menu').dialog({
//         title:'객실 타입 관리',
//         minWidth:570, maxWidth:571, minHeight:550, maxHeight:551,
//         modal:true,
//         beforeClose:function(){
 
//             if($('#t_list option').length<1){
//                 $('#menu').empty();
            

//             } else{

//                 $('#menu').empty();
//                 for(i=0;i<$('#t_list option').length;i++){

//                     value = $('#t_list option').eq(i).val()
//                     name = $('#t_list option').eq(i).text().split(", ")[1]; 
                        
//                     str = '<option value='+ value +'>' + name + '</option>';
//                     $('#menu').append(str);
            
//                 }
//             }
//             $('#t_reset').trigger('click')

//         }
//     })
// })

function r_alert(){
    $('#r_alert').dialog({
        title:'안내문',
        'position':{my:"right bottom",at:"right top",of:$('#r_cancel')},
        modal:true
    })
}
    
$(document)



.on('click','#t_add',function(){
    
    value = $('#t_number').val();   if(value==""){return;}
    name = $('#t_name').val();      if(name==""){return;}

    str = '<option value='+ value +'>'+ value +", "+name + '</option>'
    $('#t_list').append(str);
    $('#t_reset').trigger('click')
})

.on('click','#t_delete',function(){
    $('#t_list option:selected').remove();
    $('#t_reset').trigger('click')
})

.on('click','#t_reset',function(){
    $('#t_number').val('');
    $('#t_name').val('');
})

.on('click','#t_list option:selected',function(){
    str = $(this).text().split(',');
    $('#t_number').val(str[0]);
    $('#t_name').val(str[1]);
})

.on('click','#t_save',function(){

    if($('#t_list option').length<1){
        $('#r_type').empty();
        $('#type').dialog('close')

    } else{

        $('#r_type').empty();
        for(i=0;i<$('#t_list option').length;i++){
        
        value = $('#t_list option').eq(i).val()
        name = $('#t_list option').eq(i).text().split(", ")[1]; 
            
        str = '<option value='+ value +'>' + name + '</option>';
        $('#r_type').append(str);
        $('#type').dialog('close')
        }
    }

    $('#t_reset').trigger('click')
})

 
    //-----------------------------------------------
    
    
//     .on('click','#btnadd',function(){
//     	$.ajax({url:'/menu_update', type:'post', dataType:'text',		
//     		data:{seq:$('#s_no').val()},
    		
//     		beforeSend:function(){ alert('서버에 데이터를 전송했습니다.')},
    		
//     		success:function(message){
//     			alert('서버로부터 데이터를 받았습니다.');
    			
//     			loadData();
    			
//     			$('#btnadd').trigger('click')
//     		}
    		
    		
    		
//     	})
    	
//     	$('#s_no').val(s_no);
//     	$('#name').val(name);
//     	$('#price').val(price);

//    .on('click','#btnadd',function(){
//     	if($('#seq').val()=='' || $('#seq').val()==null){
//     		ajax.({url:'/menu_insert', type='post',
//     			data:{name:$('#name').val(), price:$('#price').val(),
    			
//     				
    				
//     				success:function(Hi){
    					
    					
    					
//     				}
//     			},
    			
//     		success:function(data){
    			
    			
//     			$('#Empty').trigger('click');
//     		}
//     		})
//     	}
//     })
    
//     })
.on('click','#btnadd',function(){
 $('#name').val('name');
 $('#price').val('price');
 
	
})



//////////////////////////////////////// 여기부터 ///////////////////////////////////////

// 메뉴관리 들어가는 버튼 logic 구현
.on('click','#read_menu',function(){
		
		$('#menu').dialog({autoOpen:true})
	
		$.ajax({url:'/menu_select', type:'post', dataType:'json',  
			
			beforeSend:function(){alert('hi')},
			success:function(data){
				
				
				
				refreshMenu2();
				
				
			}
		})
})
// newAdd, newDelete, newEmpty
.on('click','#newAdd', function(){

	
	if( $('#seq').val()==''||$('#seq').val()==null  ){
		
		$.ajax({url:'/menu_insert', type:'post', 
			
			data:{name:$('#newname').val(), price:$('#newprice').val()},
			
			beforeSend:function(){},
			success:function(){
				
				refreshMenu();
				refreshMenu2();
				$('#newEmpty').trigger('click');
			///////////////////////////////////////////////////////////////////////////
			}
		})
		
		
	} else {
		
		
		$.ajax({url:'/menu_update', type:'post', 
			
			data:{seq:$('#seq').val() ,name:$('#newname').val(), price:$('#newprice').val()},
			
			beforeSend:function(){},
			success:function(){
				
				refreshMenu();
				refreshMenu2();
				$('#newEmpty').trigger('click');
			///////////////////////	
			}
		})
		
	}
	
	
	
	
	
	
	
})
.on('click','#newEmpty',function(){
	$('#seq').val('');
	$('#newname').val('');
	$('#newprice').val('');
})

.on('click','#newDelete',function(){

	$.ajax({url:'/menu_delete', type:'post', 
		
		data:{seq:$('#seq').val()},
		success:function(){
			
			refreshMenu();
			refreshMenu2();
			$('#newEmpty').trigger('click');
		}
	
	})
	
	
})


.ready(function(){
	refreshMenu();	
	refreshSales();
})
.on('click','#list tr', function(){
	seq = $(this).find('td:eq(0)').text();
	name = $(this).find('td:eq(1)').text();
	price = $(this).find('td:eq(2)').text();
	
	$('#seq').val(seq);
	$('#newname').val(name);
	$('#newprice').val(price);
	
	
})

function refreshMenu(){
	
	$.ajax({url:'/refreshMenu', type:'post', dataType:'json',
		
		beforeSend:function(){},
		success:function(data){
			
			$('#mlist').empty();
			
			for(var i=0;i<data.length;i++){
				
				seq = data[i].seq;
				name = data[i].name;
				price = data[i].price;
				
				str = '<option>' + name + ", "+ price + '</option>';
				$('#mlist').append(str);
			}	
		}
	})
}

function refreshMenu2(){
	
	$.ajax({url:'/refreshMenu', type:'post', dataType:'json',
		
		beforeSend:function(){},
		success:function(data){ // 
			
			$('#list tr:gt(0)').remove(); //#list 테이블의 첫번째 행 이후의 모든 테이블을 삭제
			
			for(var i=0;i<data.length;i++){ //서버에서 받은 응답 데이터를 반복문으로 처리합니다
				
				seq = data[i].seq; // data 배열의 i번째 요소의 seq 속성 값을 가져와 seq 변수에 할당합니다.
				name = data[i].name; //data 배열의 i번째 요소의 name 속성 값을 가져와 name 변수에 할당합니다.
				price = data[i].price; //data 배열의 i번째 요소의 price 속성 값을 가져와 price 변수에 할당합니다.
				
				str = '<tr><td>' + seq + '</td>' + 
					      '<td>' + name + '</td>' +
					      '<td>' + price + '</td></tr>'
					
				$('#list').append(str);
			}	
		}
	})
}

function refreshSales(){
	
	$('#final').empty();
	
	$.ajax({url:"/sales_select", type:'post', dataType:'json',
				
			beforeSend:function(){},
			success:function(data){
				
				var total = 0;
				for(var i=0;i<data.length;i++){
					created = data[i].created;
					mobile = data[i].mobile;
					name = data[i].name;
					qty = data[i].qty;
					price = data[i].sum;
					//total = data[i].sum;
					
					
					str = '<option>' + created + ", " +
						  mobile + ", " + name + ", " + qty + "개, " + price + "원</option>" 
					
					$('#final').append(str);
					
					total = total+parseInt(data[i].sum);
					
				}
				
				$('#totalsales').val(total);
				
				
			}
			
	}) //데이터베이스에 있는거를 받아서 json
}

</script>
<body>

</body>
</html>