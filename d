
[1mFrom:[0m /home/ubuntu/workspace/monolist/app/controllers/items_controller.rb @ line 31 ItemsController#show:

    [1;34m20[0m: [32mdef[0m [1;34mshow[0m
    [1;34m21[0m:   @item= [1;34;4mItem[0m.find(params[[33m:id[0m]) 
    [1;34m22[0m: 
    [1;34m23[0m:   @itemhave = @item.haves [1;34m#ライクしてる関係だしてる[0m
    [1;34m24[0m:   @haveid = @itemhave.select([31m[1;31m"[0m[31muser_id[1;31m"[0m[31m[0m)
    [1;34m25[0m:   @users = [1;34;4mUser[0m.where([33m:id[0m => @haveid).reverse
    [1;34m26[0m: 
    [1;34m27[0m:   
    [1;34m28[0m:   @itemwant = @item.wants
    [1;34m29[0m:   @wantid = @itemwant.select([31m[1;31m"[0m[31muser_id[1;31m"[0m[31m[0m)
    [1;34m30[0m:   @users = [1;34;4mUser[0m.where([33m:id[0m => @wantid).reverse
 => [1;34m31[0m:   binding.pry
    [1;34m32[0m: [32mend[0m

