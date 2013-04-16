nexParse<-function(n)
{
 
	# loading packages
	require(XML)

	#reading NeXML file
	doc.phylo<-xmlTreeParse("phylo.xml")
	top.phylo<-xmlRoot(doc.phylo)

	#getting otu id attribute from element otu
	otu<-xmlSApply(top.phylo[[1]], function(x) xmlAttrs(x,Attrs))

	

	# print function 

	store.id<-function(n)
	{
		
		mat <- vector(length=n)
		for (x in 1:n)
		{
			id<-otu[1,x]
			otuid.row<-row[3,x]
			mat[x]<-id
		}
		return(mat)
	
	}
	mat1<-store.id(n)
	return(length(mat1))
	require(ape)
	
}
