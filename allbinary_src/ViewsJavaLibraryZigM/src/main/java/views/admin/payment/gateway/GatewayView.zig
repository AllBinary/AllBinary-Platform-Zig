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
// package views.admin.payment.gateway

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const PaymentGatewayInterface = @import("org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface.zig").PaymentGatewayInterface;
const BasicPaymentTypeUtil = @import("org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil.zig").BasicPaymentTypeUtil;
const PaymentGatewayEntityFactory = @import("org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory.zig").PaymentGatewayEntityFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const PaymentGatewayComponent = @import("views/admin/payment/gateway/PaymentGatewayComponent.zig").PaymentGatewayComponent;
const PaymentGatewayViewAbstract = @import("views/admin/payment/gateway/PaymentGatewayViewAbstract.zig").PaymentGatewayViewAbstract;

pub const GatewayView = struct {
    const Self = @This();
    pub const java_name = "views.admin.payment.gateway.GatewayView";
    base: PaymentGatewayViewAbstract = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(PaymentGatewayViewAbstract, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getFormData(self: *Self, request: ?*HttpServletRequest) void {
        _ = Inheritance.call(&self.base, "getFormData", .{ request });
        if (Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getPaymentGatewayPrimaryKey").getPaymentGatewayPrimaryKey().?, "getName").getName() })) {
            _ = Inheritance.call(Inheritance.receiver(self, "getPaymentGatewayPrimaryKey").getPaymentGatewayPrimaryKey().?, "setName", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getPaymentMethod").getPaymentMethod() });
        }
    }
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            const paymentGatewayInterface: ?*PaymentGatewayInterface = Inheritance.upcast(?*PaymentGatewayInterface, Inheritance.call(PaymentGatewayEntityFactory.getInstance().?, "getPaymentGatewayInterface", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getPaymentGatewayPrimaryKey").getPaymentGatewayPrimaryKey().?, "getStoreName").getStoreName(), Inheritance.call(BasicPaymentTypeUtil.getInstance().?, "get", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getPaymentGatewayPrimaryKey").getPaymentGatewayPrimaryKey().?, "getName").getName() }) }));
            return Inheritance.upcast(?*String, Inheritance.receiver(Inheritance.callStatic(PaymentGatewayComponent, "create2", .{ Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface(), paymentGatewayInterface }), "view").view());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("edit()"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

