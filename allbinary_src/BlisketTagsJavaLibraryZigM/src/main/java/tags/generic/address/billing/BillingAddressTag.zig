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
// package tags.generic.address.billing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const BillingAddressData = @import("org/allbinary/business/user/address/BillingAddressData.zig").BillingAddressData;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const StoreValidationTransformTag = @import("tags/StoreValidationTransformTag.zig").StoreValidationTransformTag;

pub const BillingAddressTag = struct {
    const Self = @This();
    pub const java_name = "tags.generic.address.billing.BillingAddressTag";
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
            if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.VIEW }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Billing Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.billing.ValidationView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.EDIT }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Billing Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.billing.EditValidationView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.NEW }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Billing Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.billing.NewValidationView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.INSERT }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Billing Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.billing.AddValidationView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.DELETE }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Billing Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.billing.DeleteValidationView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ BillingAddressData.SELECT }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Billing Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.billing.SelectValidationView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ BillingAddressData.SETTOSHIPPINGADDRESS }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Billing Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.billing.SetValidationView") });
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

