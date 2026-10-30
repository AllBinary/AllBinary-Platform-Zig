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
// package views.admin.payment.gateways

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const PaymentGatewayEntityFactory = @import("org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityFactory.zig").PaymentGatewayEntityFactory;
const PaymentGatewayEntityInterface = @import("org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityInterface.zig").PaymentGatewayEntityInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const PaymentGatewayViewAbstract = @import("views/admin/payment/gateway/PaymentGatewayViewAbstract.zig").PaymentGatewayViewAbstract;
const PaymentGatewaysView = @import("views/admin/payment/gateways/PaymentGatewaysView.zig").PaymentGatewaysView;

pub const SelectExistingView = struct {
    const Self = @This();
    pub const java_name = "views.admin.payment.gateways.SelectExistingView";
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
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        { // try
            const paymentGatewayEntityInterface: ?*PaymentGatewayEntityInterface = Inheritance.upcast(?*PaymentGatewayEntityInterface, PaymentGatewayEntityFactory.getInstance());
            const existingGateways: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(paymentGatewayEntityInterface.?, "findPaymentTypeVectorByStore", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getPaymentGatewayPrimaryKey").getPaymentGatewayPrimaryKey().?, "getStoreName").getStoreName() }));
            return Inheritance.upcast(?*String, Inheritance.receiver(Inheritance.callStatic(PaymentGatewaysView, "create2", .{ Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface(), existingGateways }), "view").view());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("view"), e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

