// node represents a linked list
data node {
	int val;
	node next;
}

// ll represents lists
ll<n> == self=null & n=0
	or self::node<_, r> * r::ll<n-1>
	inv n>=0;

// lseg represents list segments
lseg<p, n> == self=p & n = 0
        or self::node<_, r> * r::lseg<p, n-1>
    inv n >= 0;


// ll2<n,B> represents lists of size n where all heap nodes are the elements of bag B
ll2<n,B> == self=null & n=0 & B={}
			or self::node<a,q>*q::ll3<n-1,B1> & B = union({self},B1)
	inv n >= 0 ;

// ll3<n,B> represents lists of size n containing the elements of bag B
ll3<n,B> == self=null & n=0 & B={}
			or self::node<a,q>*q::ll3<n-1,B1> & B = union({a},B1)
	inv n >= 0 ;
// TODO: How to express cardinality of a bag B? I want to add that to the invariant.



int length(node x)
{
	if (x==null) return 0;
	else return 1 + length(x.next);
}
