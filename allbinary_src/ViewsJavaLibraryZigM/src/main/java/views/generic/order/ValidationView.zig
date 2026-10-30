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
// package views.generic.order

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const OrderHistoryFactory = @import("org/allbinary/business/user/commerce/inventory/order/OrderHistoryFactory.zig").OrderHistoryFactory;
const OrderItemsEntity = @import("org/allbinary/data/tables/user/commerce/inventory/order/OrderItemsEntity.zig").OrderItemsEntity;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const OrderView = @import("views/generic/order/OrderView.zig").OrderView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const ValidationView = struct {
    const Self = @This();
    pub const java_name = "views.generic.order.ValidationView";
    base: OrderView = undefined,
    logUtil: ?*LogUtil = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(OrderView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            const valid: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (Object.same(Inheritance.receiverOf(Inheritance.fieldPointer(self, "order").*.?, "isIdValid").isIdValid(), Boolean.FALSE)) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            } else {
                Inheritance.fieldPointer(self, "orderHistory").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "orderHistory").*), Inheritance.callStatic(OrderHistoryFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "order").*.?, "getId").getId() }));
                if (Inheritance.fieldPointer(self, "orderHistory").* == null or Object.same(Inheritance.receiverOf(Inheritance.fieldPointer(self, "orderHistory").*.?, "isValid").isValid(), Boolean.FALSE)) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
                const orderItems: ?*OrderItemsEntity = OrderItemsEntity.create();
                Inheritance.fieldPointer(self, "basketReview").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "basketReview").*), Inheritance.call(orderItems.?, "getBasketReview", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "order").*.?, "getId").getId() }));
                if (Inheritance.fieldPointer(self, "basketReview").* == null or Object.same(Inheritance.receiverOf(Inheritance.fieldPointer(self, "basketReview").*.?, "isValid").isValid(), Boolean.FALSE)) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
            }
            return valid;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate form"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (Object.same(Inheritance.receiverOf(Inheritance.fieldPointer(self, "order").*.?, "isIdValid").isIdValid(), Boolean.FALSE)) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "order").*.?, "getIdValidationInfo").getIdValidationInfo() });
            } else {
                Inheritance.fieldPointer(self, "orderHistory").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "orderHistory").*), Inheritance.callStatic(OrderHistoryFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "order").*.?, "getId").getId() }));
                if (Inheritance.fieldPointer(self, "orderHistory").* == null or Object.same(Inheritance.receiverOf(Inheritance.fieldPointer(self, "orderHistory").*.?, "isValid").isValid(), Boolean.FALSE)) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Order History data error for: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "order").*.?, "getId").getId() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br />") });
                }
                const orderItems: ?*OrderItemsEntity = OrderItemsEntity.create();
                Inheritance.fieldPointer(self, "basketReview").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "basketReview").*), Inheritance.call(orderItems.?, "getBasketReview", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "order").*.?, "getId").getId() }));
                if (Inheritance.fieldPointer(self, "basketReview").* == null) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Order Items data error - does not exist for: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "order").*.?, "getId").getId() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br />") });
                } else if (Object.same(Inheritance.receiverOf(Inheritance.fieldPointer(self, "basketReview").*.?, "isValid").isValid(), Boolean.FALSE)) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Order Items data error - not valid for: ") });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "order").*.?, "getId").getId() });
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br />") });
                }
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Validating Form");
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

