 <section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form" ><!--login form-->
                                                <form action="productBean.jsp" method="post" enctype="multipart/form-data" >
                                                     <h3>ADD PRODUCT </h3>
                                                       <input type="text" name="name" placeholder="MODEL" required/>
                                                       <input type="text" name="size" placeholder="SIZE" required/>
                                                        <input type="text" name="price" placeholder="PRICE" required/>
                                                         <input type="text" name="discount" placeholder="DISCOUNT"/>
                                                        <span>
                                                            <label><input type="radio" name="gen" value="men"> MEN</label>
                                                        </span>
                                                        <span>
                                                            <label><input type="radio" name="gen" value="women"> WOMEN</label>
                                                        </span>
                                                                         <span>
                                                                            <label><input type="radio" name="gen" value="kids"> kids</label>
                                                        </span>
                                                        <span>
                                                            <label><input type="radio" name="gen" value="digital"> DIGITAL</label>
                                                        </span>

                                                        <input type="text" name="brand" placeholder="BRAND" required/>
                                                        <input type="text" name="shortdesc" placeholder="SHORT DESCRIPTION" required/>
                                                        <div class="form-group col-md-12">
				                <textarea name="description" required="required"  class="form-control" rows="2" placeholder="DESCRIPTION"  ></textarea>
				            </div>
							 
                                                         <input type="file" name="image" required/>
                                                        <input type="submit" value="ADD PRODUCT" style=" background: #FE980F;
                                                             border: medium none;
                                                             
                                                             border-radius: 0;
                                                             color: #FFFFFF;
                                                             text-align: center;
                                                              display: block;
                                                                 font-family: 'Roboto', sans-serif;
                                                                 padding: 6px 25px;" class="btn btn-default"/>
                                                          <input type="button" value="CANCEL" style=" background: #FE980F;
                                                            border: medium none;
                                                            border-radius: 0;
                                                            color: #FFFFFF;
                                                             text-align: center;
                                                            display: block;
                                                            font-family: 'Roboto', sans-serif;
                                                            padding: 6px 25px;" class="btn btn-defaul"/> 
                                                     </form>
                                        </div>
                                </div>
                        </div>
                </div>
    </section>
	