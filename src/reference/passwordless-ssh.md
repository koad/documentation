
passwordless mofos...

## setup 
```bash
export KOAD_IO_INSTANCE=alice
export KOAD_IO_PROD_HOST=wonderland
export KOAD_IO_INSTANCE=hazes
export KOAD_IO_PROD_HOST=htwo
```

## generate 

for your koad:io entity
```bash
mkdir -p $HOME/.$KOAD_IO_INSTANCE/id
ssh-keygen -t rsa -b 4096 -C "$USER@$HOSTNAME" -f $HOME/.$KOAD_IO_INSTANCE/id/rsa
```

for yourself, regular user .
```bash
ssh-keygen -t rsa -b 4096 -C "$USER@$HOSTNAME"
```

## send  
for your koad:io entity, to your production host
```bash
ssh-copy-id -i $HOME/.$KOAD_IO_INSTANCE/id/rsa $KOAD_IO_INSTANCE@$KOAD_IO_PROD_HOST
```

without an entity or anything, regular user.
```bash
ssh-copy-id koad@flowbie
```

## play 

### login
```bash
ssh -i $HOME/.$KOAD_IO_INSTANCE/id/rsa $KOAD_IO_INSTANCE@$KOAD_IO_PROD_HOST
```
is same as 
```bash
$KOAD_IO_INSTANCE ssh $KOAD_IO_PROD_HOST
```
### send file
```bash
$KOAD_IO_INSTANCE scp $HOME/.$KOAD_IO_INSTANCE/.env $KOAD_IO_PROD_HOST:/home/$KOAD_IO_INSTANCE/.env
```
is same as 
```bash
scp -i $HOME/.$KOAD_IO_INSTANCE/id_rsa  $HOME/.$KOAD_IO_INSTANCE/.env $KOAD_IO_INSTANCE@$KOAD_IO_PROD_HOST:/home/$KOAD_IO_INSTANCE/.env
```
