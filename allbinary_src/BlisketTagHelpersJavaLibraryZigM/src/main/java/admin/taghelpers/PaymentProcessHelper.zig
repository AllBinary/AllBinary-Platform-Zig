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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const TransformInfoHttpFactory = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpFactory.zig").TransformInfoHttpFactory;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;
const PaymentProcessorComponent = @import("views/admin/payment/PaymentProcessorComponent.zig").PaymentProcessorComponent;
const TagHelper = @import("admin/taghelpers/TagHelper.zig").TagHelper;

pub const PaymentProcessHelper = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.PaymentProcessHelper";
    base: TagHelper = undefined,
    paymentProcessorComponent: ?*PaymentProcessorComponent = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagHelper.create().*;
        this.initFields();
        const transformInfoInterface: ?*TransformInfoHttpInterface = Inheritance.cast(?*TransformInfoHttpInterface, Inheritance.callStatic(TransformInfoHttpFactory, "getInstance", .{ propertiesHashMap, pageContext }));
        this.paymentProcessorComponent = Inheritance.callStatic(PaymentProcessorComponent, "create1", .{ transformInfoInterface });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn process(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.receiver(self.paymentProcessorComponent.?, "view").view());
    }
};

