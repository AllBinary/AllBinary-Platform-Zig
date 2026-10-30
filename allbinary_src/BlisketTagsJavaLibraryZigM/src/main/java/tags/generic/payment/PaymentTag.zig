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
// package tags.generic.payment

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const PaymentData = @import("org/allbinary/business/user/commerce/money/payment/PaymentData.zig").PaymentData;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const StoreValidationTransformTag = @import("tags/StoreValidationTransformTag.zig").StoreValidationTransformTag;

pub const PaymentTag = struct {
    const Self = @This();
    pub const java_name = "tags.generic.payment.PaymentTag";
    base: StoreValidationTransformTag = undefined,
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = StoreValidationTransformTag.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            _ = Inheritance.call(self, "setName", .{ String.literal("Basic Payment View") });
            _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.payment.ValidationView") });
            if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ PaymentData.VIEW }) == 0 or Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ PaymentData.CHANGE }) == 0 or Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ PaymentData.ADDNEW }) == 0) {
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.INSERT }) == 0) {
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.DELETE }) == 0) {
                    return Inheritance.fieldPointer(self, "EVAL_BODY_INCLUDE").*;
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ PaymentData.SELECT }) == 0) {
                    return Inheritance.fieldPointer(self, "EVAL_BODY_INCLUDE").*;
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("No Such View Command: "), Inheritance.receiver(self, "getCommand").getCommand()); break :exception error.Exception; }});
                }
                return self.base.doStartTag();
            }
            std.debug.panic("{any}", .{exception: { _ = String.literal("Command Null"); break :exception error.Exception; }});
        }
        // catch (LicensingException e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagLicensingRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

