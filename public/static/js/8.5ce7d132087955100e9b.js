webpackJsonp([8],{OFHX:function(t,e){},fJvi:function(t,e,n){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var a=n("//Fk"),i=n.n(a),o=n("Dd8w"),s=n.n(o),r=n("pFYg"),c=n.n(r),l=n("vMJZ"),d=[{title:"id",dataIndex:"id",sorter:!0,align:"center"},{title:"用户名",dataIndex:"name",align:"center"},{title:"角色",dataIndex:"role",scopedSlots:{customRender:"role"},align:"center"},{title:"上次登陆ip",dataIndex:"last_login_ip",align:"center"},{title:"上次登陆时间",dataIndex:"last_login_time",align:"center"},{title:"状态",dataIndex:"status",filters:[{text:"禁用",value:"2"},{text:"启用",value:"1"}],scopedSlots:{customRender:"status"},align:"center"},{title:"操作",key:"action",scopedSlots:{customRender:"action"},align:"center"}],u={data:function(){return{data:[],pagination:{pageSize:15},loading:!1,columns:d,checked:!1,name:name,filters:{},total:"",start:""}},mounted:function(){this.fetch({pageSize:this.pagination.pageSize})},watch:{name:function(t,e){""==t&&this.fetch({pageSize:this.pagination.pageSize})}},methods:{onSearch:function(t){var e=this;if(console.log(t),!t.trim())return!1;Object(l.e)({name:t}).then(function(t){console.log(t),console.log(c()(t.data)),e.data=t.data.data;var n=s()({},e.pagination);n.total=t.data.total,e.pagination=n})},userAdd:function(){this.$router.push({name:"UserAdd"})},handleTableChange:function(t,e,n){var a=s()({},this.pagination);a.current=t.current,a.sortField=n.field,a.sortOrder=n.order,this.pagination=a,this.filters=e,this.fetch(s()({pageSize:t.pageSize,page:t.current,sortField:n.field,sortOrder:n.order},e))},fetch:function(){var t=this,e=arguments.length>0&&void 0!==arguments[0]?arguments[0]:{};this.loading=!0,Object(l.e)(e).then(function(e){console.log(e.data);var n=s()({},t.pagination),a=e.data;t.data=a.data,n.total=a.total,t.pagination=n,t.loading=!1}),this.tag_data()},edit:function(t){this.$router.push({name:"UserEdit",query:{id:t}})},del:function(t){var e=this;this.$confirm({content:"确认删除？",cancelText:"取消",okText:"删除",onOk:function(){return new i.a(function(n,a){Object(l.b)({id:t}).then(function(t){e.$message.success("删除成功"),e.fetch(s()({pageSize:e.pagination.pageSize,page:e.pagination.current,sortField:e.pagination.sortField,sortOrder:e.pagination.sortOrder},e.filters)),e.destroyAll()})})},onCancel:function(){e.destroyAll(),e.$message.info("取消删除",2)}})},destroyAll:function(){this.$destroyAll()},status:function(t,e){var n=this;Object(l.i)({id:t,status:e}).then(function(t){n.fetch(s()({pageSize:n.pagination.pageSize,page:n.pagination.current,sortField:n.pagination.sortField,sortOrder:n.pagination.sortOrder},n.filters)),setTimeout(function(){n.$message.success(t.message)},400)})},reset_password:function(t){var e=this;this.$confirm({content:"重置后不可回复, 确认重置？",cancelText:"取消",okText:"重置",onOk:function(){return new i.a(function(n,a){Object(l.h)({id:t}).then(function(t){e.$message.success(t.message),e.destroyAll()})})},onCancel:function(){e.destroyAll(),e.$message.info("取消重置",2)}})},tag_data:function(){var t=this;Object(l.j)().then(function(e){t.total=e.data.total,t.start=e.data.start})}}},g={render:function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("a-row",[n("a-col",{attrs:{span:3,xs:24,sm:5,md:4,lg:3}},[n("a-button",{staticStyle:{"margin-top":"4px"},attrs:{type:"primary",size:"small"},on:{click:t.userAdd}},[n("a-icon",{attrs:{type:"plus"}}),t._v("用户\n      ")],1)],1),t._v(" "),n("a-col",{attrs:{span:8,xs:24,sm:10,md:9,lg:8}},[n("a-input-search",{attrs:{allowClear:"",placeholder:"请输入用户名",enterButton:""},on:{search:t.onSearch},model:{value:t.name,callback:function(e){t.name=e},expression:"name"}})],1),t._v(" "),n("a-col",{staticStyle:{"margin-top":"5px"},attrs:{span:2,offset:7}},[n("a-tag",{attrs:{color:"#108ee9"}},[t._v("总用户数: "+t._s(t.total))])],1),t._v(" "),n("a-col",{staticStyle:{"margin-top":"5px"},attrs:{span:2,offset:1}},[n("a-tag",{attrs:{color:"#2db7f5"}},[t._v("启用用户: "+t._s(t.start))])],1)],1),t._v(" "),n("a-row",[n("a-col",[n("a-table",{attrs:{columns:t.columns,rowKey:function(t){return t.id},dataSource:t.data,pagination:t.pagination,loading:t.loading},on:{change:t.handleTableChange},scopedSlots:t._u([{key:"role",fn:function(e){return n("span",{},[t._v(t._s(e.name))])}},{key:"status",fn:function(e,a){return n("span",{},[n("a-switch",{attrs:{checkedChildren:"启",unCheckedChildren:"禁",checked:e},on:{click:function(e){return t.status(a.id,a.status)}}})],1)}},{key:"name",fn:function(e){return[t._v(t._s(e.first)+" "+t._s(e.last))]}},{key:"action",fn:function(e){return n("span",{},[n("a-button",{attrs:{size:"small",type:"primary",icon:"edit"},on:{click:function(n){return t.edit(e.id)}}}),t._v(" "),n("a-button",{attrs:{size:"small",type:"danger",icon:"delete"},on:{click:function(n){return t.del(e.id)}}}),t._v(" "),n("a-button",{attrs:{type:"danger",size:"small"},on:{click:function(n){return t.reset_password(e.id)}}},[t._v("重置密码")])],1)}}])})],1)],1),t._v(" "),n("a-divider")],1)},staticRenderFns:[]};var f=n("VU/8")(u,g,!1,function(t){n("OFHX")},null,null);e.default=f.exports}});
//# sourceMappingURL=8.5ce7d132087955100e9b.js.map