-- Tests :
l1 = ListNode(2, {val= 4, next= {val= 3, next= null}});
l2 = ListNode(5, {val= 6, next= {val= 4, next= null}});

l3 = ListNode(0);
l4 = ListNode(0);

l5 = ListNode(9, {val= 9, next= {val= 9, next= { val= 9, next= { val= 9, next= { val= 9, next= { val= 9, next= null}}}}}});
l6 = ListNode(9, {val= 9, next= {val= 9, next= { val= 9, next= null}}});

l7 = ListNode(1, {val= 0, next= {val= 0, next= {val= 0, next= {val= 0, next= {val= 0, next= {val= 0, next= {val= 0, next= {val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 0, next={val= 1, next= null}}}}}}}}}}}}}}}}}}}}}}}}}}}}}});
l8 = l2;
-- End of tests

tests = { { l1, l2 }, { l3, l4 }, { l5, l6 }, { l7, l8 } };
for i=1,#tests do 
	list = addTwoNumbers(tests[i][1], tests[i][2]);
	print("list"..i);
	while list do
		print(list.val);
		list = list.next;
	end
end
