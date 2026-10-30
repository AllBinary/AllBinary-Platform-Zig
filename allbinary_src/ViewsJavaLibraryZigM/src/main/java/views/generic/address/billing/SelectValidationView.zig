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
// package views.generic.address.billing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MESSAGES = @import("org/allbinary/globals/MESSAGES.zig").MESSAGES;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const BillingAddressView = @import("views/generic/address/billing/BillingAddressView.zig").BillingAddressView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const SelectValidationView = struct {
    const Self = @This();
    pub const java_name = "views.generic.address.billing.SelectValidationView";
    base: BillingAddressView = undefined,
    // Implements ValidationComponentInterface
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BillingAddressView, "create1", .{ transformInfoInterface }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        _ = self;
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, MESSAGES.CONTACTADMIN);
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
};

