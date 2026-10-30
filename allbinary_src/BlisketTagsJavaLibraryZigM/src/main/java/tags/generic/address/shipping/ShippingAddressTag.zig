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
// package tags.generic.address.shipping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const ShippingAddressData = @import("org/allbinary/business/user/address/ShippingAddressData.zig").ShippingAddressData;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
const StoreValidationTransformTag = @import("tags/StoreValidationTransformTag.zig").StoreValidationTransformTag;

pub const ShippingAddressTag = struct {
    const Self = @This();
    pub const java_name = "tags.generic.address.shipping.ShippingAddressTag";
    base: StoreValidationTransformTag = undefined,
    value: ?*String = null,

    fn initFields(this: *Self) void {
        this.value = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = StoreValidationTransformTag.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.VIEW }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Shipping Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.shipping.ViewShippingAddressesView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.EDIT }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Shipping Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.shipping.EditShippingAddressesView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.NEW }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Shipping Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.shipping.NewShippingAddressesView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.INSERT }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Shipping Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.shipping.AddShippingAddressesView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.DELETE }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Shipping Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.shipping.DeleteShippingAddressesView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ ShippingAddressData.SELECT }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Shipping Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.shipping.SelectShippingAddressesView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ ShippingAddressData.SETTOBILLINGADDRESS }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Basic Shipping Address View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.address.shipping.SetShippingAddressesView") });
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

