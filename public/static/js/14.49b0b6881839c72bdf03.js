webpackJsonp([14],{lzQ5:function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var a=n("//Fk"),s=n.n(a),o=n("zp1X"),c=n("vLgD");var i={props:{id:Number},mounted:function(){},data:function(){return{visible:!1,expandedKeys:[],autoExpandParent:!0,checkedKeys:[],selectedKeys:[],treeData:[]}},watch:{checkedKeys:function(e){console.log("onCheck",e)}},methods:{showDrawer:function(){var e=this;this.getTreePerm(),setTimeout(function(){e.visible=!0},300)},onClose:function(){this.visible=!1},getTreePerm:function(){var e=this;new s.a(function(t){Object(o.g)().then(function(n){e.treeData=n.data,t()})}).then(function(){e.getSelectedPerm()})},getSelectedPerm:function(){var e,t=this;(e={role_id:this.id},Object(c.a)({url:"/v1/role_perm/index",method:"get",params:e})).then(function(e){t.checkedKeys=e.data.perm_id,t.expandedKeys=e.data.perm_id})},add:function(){var e,t=this;(e={role_id:this.id,perm_id:this.checkedKeys},Object(c.a)({url:"/v1/role_perm/store",method:"post",data:e})).then(function(e){t.$message.success("分配成功"),t.onClose()})},onExpand:function(e){console.log("onExpand",e),this.expandedKeys=e,this.autoExpandParent=!1},onCheck:function(e){console.log("onCheck",e),this.checkedKeys=e},onSelect:function(e,t){console.log("onSelect",t),this.selectedKeys=e}}},d={render:function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticStyle:{display:"inline"}},[n("a-button",{attrs:{size:"small",type:"primary"},on:{click:e.showDrawer}},[e._t("default",[e._v("权限")])],2),e._v(" "),n("a-drawer",{attrs:{title:"分配权限",placement:"right",closable:!0,visible:e.visible,width:300},on:{close:e.onClose}},[n("div",{staticStyle:{width:"200px",margin:"0 auto"}},[n("a-tree",{attrs:{checkable:"",expandedKeys:e.expandedKeys,autoExpandParent:e.autoExpandParent,selectedKeys:e.selectedKeys,treeData:e.treeData},on:{expand:e.onExpand,select:e.onSelect},model:{value:e.checkedKeys,callback:function(t){e.checkedKeys=t},expression:"checkedKeys"}}),e._v(" "),n("div",{staticStyle:{"margin-top":"30px"}},[n("a-button",{attrs:{type:"primary",size:"small"},on:{click:e.add}},[e._v("确认")])],1)],1)])],1)},staticRenderFns:[]},r=n("VU/8")(i,d,!1,null,null,null);t.default=r.exports}});
//# sourceMappingURL=14.49b0b6881839c72bdf03.js.map