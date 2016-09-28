<%@include file="Header.jsp"%>

<div class="container">
<p>
&nbsp;
&nbsp;
&nbsp;
&nbsp;
</p>
	<div class="row">
		<div class="col-xs-12 col-md-12">
			<form:form modelAttribute="blog" class="">
				<div class="row">

					<div class="col-xs-6 col-md-6">
						<h1>${blog.title}</h1>
						<%-- <form:label path="${title}">Title</form:label>
						<form:label path="${title}" class="form-control">${blog.title}</form:label> --%>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6 col-md-6">
						<h2>${blog.description}</h2>
						<%-- 
						<form:label path="${owner}">Owner</form:label>
						<form:label path="${owner}" class="form-control">${blog.owner}</form:label> --%>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-6 col-md-6">
						<h4>${blog.owner}</h4>
						<%-- <form:label path="${description}">Description</form:label>
						<form:label path="${description}" class="form-control">${blog.description}</form:label> --%>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-10 col-md-10">
						<aside class="col-xs-10 col-md-10">
							<!-- <p>fslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnfl
								sdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnfl
								ksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsa
								nfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfads
								lnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnfls
								danfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksan
								flknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalkn
								fsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsad
								nfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfsl
								kflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksd anfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsa
								fnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnf
								klsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfs
								lkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanf
								salknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasd
								nfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnfl
								ksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasd nflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflk
								sdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnfl
								danfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafns afnsafnsanfsalknfsa
								dnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflsk adnflsdanfklsadnfslk
								flknlkasnflksanflknasfnsafnsafnsafnsanfsalknfsadnflksdanfsdanfadslnfklsadnfasdnfasdnflskadnflsdanfklsadnfslkflknlkasnflksanflknasfnsafnsafnsafnsanfsa. lknfsadnflksdanfsdanf
								adslnfklsadnfasdnfasdnflskadnflsdanfklsadn</p> -->
								<p>${blog.detail}</p>
						</aside>

						<%-- <form:label path="${detail}" class="form-control">Detail</form:label> --%>
						<%-- <form:label path="${detail}" class="form-control"></form:label> --%>
					</div>

				</div>
			</form:form>
		</div>
	</div>
</div>