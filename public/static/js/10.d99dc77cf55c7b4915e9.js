webpackJsonp([10],{"1xmT":function(e,t,r){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var a=r("STSY"),s=r("vMJZ"),o={data:function(){return{formLayout:"horizontal",form:this.$form.createForm(this,{name:"coordinated"}),roles:[]}},mounted:function(){this.userDetail(this.$route.query.id),this.getRoleList()},methods:{getRoleList:function(){var e=this;Object(a.d)().then(function(t){console.log(t),e.roles=t.data})},userDetail:function(e){var t=this;Object(s.c)({id:e}).then(function(e){console.log(e);var r=e.data,a=r.id,s=r.name,o=r.role_id;t.form.setFieldsValue({id:a,name:s,role_id:o})})},handleSubmit:function(e){var t=this;e.preventDefault(),this.form.validateFields(function(e,r){e||Object(s.d)(r).then(function(e){console.log(r),t.$message.success(e.message),setTimeout(function(){t.go()},100)})})},go:function(){this.form.resetFields(),this.$router.push({name:"UserList"})}}},i={render:function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("a-form",{attrs:{form:e.form},on:{submit:e.handleSubmit}},[r("a-form-item",{attrs:{label:"用户名","label-col":{span:5},"wrapper-col":{span:8}}},[r("a-input",{directives:[{name:"decorator",rawName:"v-decorator",value:["name",{rules:[{required:!0,message:"用户名必须填写"}]}],expression:"['name', { rules: [{ required: true, message: '用户名必须填写' }] }]"}],attrs:{placeholder:"请输入用户名"}})],1),e._v(" "),r("a-form-item",{staticStyle:{height:"0px",margin:"0",padding:"0"}},[r("a-input",{directives:[{name:"decorator",rawName:"v-decorator",value:["id",{rules:[{required:!1}]}],expression:"['id', { rules: [{ required: false }] }]"}],attrs:{type:"hidden"}})],1),e._v(" "),r("a-form-item",{attrs:{label:"角色","label-col":{span:5},"wrapper-col":{span:8}}},[r("a-select",{directives:[{name:"decorator",rawName:"v-decorator",value:["role_id",{rules:[{required:!0,message:"必须选择角色"}]}],expression:"[\n        'role_id',\n        { rules: [{ required: true, message: '必须选择角色' }] },\n      ]"}],attrs:{placeholder:"请选择角色"}},e._l(e.roles,function(t){return r("a-select-option",{key:t.id,attrs:{value:t.id}},[e._v(e._s(t.name))])}),1)],1),e._v(" "),r("a-form-item",{attrs:{"wrapper-col":{span:12,offset:5}}},[r("a-row",[r("a-col",{style:{textAlign:"left"},attrs:{span:4}},[r("a-button",{attrs:{type:"primary","html-type":"submit"}},[e._v("提交")])],1),e._v(" "),r("a-col",{style:{textAlign:"left"},attrs:{span:4}},[r("a-button",{attrs:{type:"primary"},on:{click:e.go}},[e._v("返回")])],1)],1)],1)],1)},staticRenderFns:[]},n=r("VU/8")(o,i,!1,null,null,null);t.default=n.exports}});
//# sourceMappingURL=10.d99dc77cf55c7b4915e9.js.map