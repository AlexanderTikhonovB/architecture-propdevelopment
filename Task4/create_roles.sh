kubectl create role support --verb=get,list,watch --resource=pods

kubectl create role develop --verb=create,update,patch,delete --resource=pods

kubectl create role security --verb=get,list,create,update,delete,watch --resource=secrets,roles

