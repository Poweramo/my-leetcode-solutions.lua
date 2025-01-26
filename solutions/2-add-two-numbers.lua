function ListNode(val, next) 
	return { val= val, next = next };
end

function addTwoNumbers(l1, l2)
	trav1 = l1;
	trav2 = l2;
	resList = nil;
	resTrav = nil;
	rest = 0;

	while trav1 or trav2 do
		if not trav1 then trav1 = ListNode(0) end
		if not trav2 then trav2 = ListNode(0) end

		sum = trav1.val + trav2.val;
		sumNode = ListNode(sum + rest);
		if sumNode.val >= 10 then 
			sumNode.val = sumNode.val - 10;
			rest = 1;
		else
			rest = 0;
		end

		trav1 = trav1.next;
		trav2 = trav2.next;
		if resList then
			resTrav.next = sumNode;
			resTrav = resTrav.next;
		else
			resList = sumNode;
			resTrav = resList;
		end
	end

	if rest == 1 then resTrav.next = ListNode(1) end
	return resList;
end
