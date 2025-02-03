import { Admin, Resource } from 'react-admin'
import restProvider from 'ra-data-simple-rest'
import React from 'react'

import {
  List,
  Datagrid,
  TextField,
  EditButton,
  DeleteButton,
} from 'react-admin'

import { Create, Edit, SimpleForm, TextInput } from 'react-admin'

export default function App() {
  return (
    <Admin dataProvider={restProvider('http://IP:5000/api')}>
      <Resource
        name='clientes'
        list={UserList}
        create={UserCreate}
        edit={UserEdit}
      />
    </Admin>
  );
}

const UserList = (props) => {
  return (
    <List {...props}>
      <Datagrid>
        <TextField source='id' />
        <TextField source='fname' />
        <TextField source='lname' />
        <TextField source='timestamp' />
        <EditButton basePath='/clientes' />
        <DeleteButton basePath='/clientes' />
      </Datagrid>
    </List>
  )
}

const UserCreate = (props) => {
  return (
    <Create title='Create a User' {...props}>
      <SimpleForm>
        <TextInput source='fname' />
        <TextInput source='lname' />
      </SimpleForm>
    </Create>
  )
}

const UserEdit = (props) => {
  return (
    <Edit title='Edit User' {...props}>
      <SimpleForm>
        <TextInput disabled source='id' />
        <TextInput source='fname' />
        <TextInput source='lname' />
      </SimpleForm>
    </Edit>
  )
}
