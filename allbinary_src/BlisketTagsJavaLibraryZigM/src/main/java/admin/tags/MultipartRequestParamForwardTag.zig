//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package admin.tags

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
// const Tag = @import("javax/servlet/jsp/tagext/Tag.zig").Tag;
const MultipartRequestParamForwardHelper = @import("admin/taghelpers/MultipartRequestParamForwardHelper.zig").MultipartRequestParamForwardHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const CustomTagSupport = @import("tags/CustomTagSupport.zig").CustomTagSupport;
const HelperTag = @import("tags/HelperTag.zig").HelperTag;
const AbTagData = @import("admin/tags/AbTagData.zig").AbTagData;
const ParentInventoryTagHelper = @import("admin/tags/ParentInventoryTagHelper.zig").ParentInventoryTagHelper;

pub const MultipartRequestParamForwardTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.MultipartRequestParamForwardTag";
    base: CustomTagSupport = undefined,
    page: ?*String = null,
    command: ?*String = null,
    paramVector: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.page = null;
        this.command = null;
        this.paramVector = null;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CustomTagSupport.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setPage(self: *Self, page: ?*String) void {
        self.page = page;
    }
    

    pub fn setCommand(self: *Self, command: ?*String) void {
        self.command = command;
    }
    

    pub fn setParamVector(self: *Self, paramVector: ?*BasicArrayList) void {
        self.paramVector = paramVector;
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            const parentTag: ?*HelperTag = Inheritance.cast(?*HelperTag, Inheritance.receiver(self, "getParent").getParent());
            _ = Inheritance.call(ParentInventoryTagHelper.getInstance().?, "isValid", .{ self, parentTag });
            const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
            _ = Inheritance.call(hashMap.?, "put", .{ AbTagData.PARENT, parentTag });
            const multipartRequestParamForwardHelper: ?*MultipartRequestParamForwardHelper = Inheritance.callStatic(MultipartRequestParamForwardHelper, "create5", .{ parentTag, self.page, self.command, self.paramVector, Inheritance.fieldPointer(self, "pageContext").* });
            _ = multipartRequestParamForwardHelper.?.forward();
            return Tag.SKIP_BODY;
        }
        // catch (LicensingException e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagLicensingRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return Tag.SKIP_BODY;
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return Tag.SKIP_BODY;
    }
};

