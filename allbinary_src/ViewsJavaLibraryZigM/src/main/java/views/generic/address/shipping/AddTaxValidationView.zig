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
// package views.generic.address.shipping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontFactory = @import("org/allbinary/business/context/modules/storefront/StoreFrontFactory.zig").StoreFrontFactory;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const ShippingAddressData = @import("org/allbinary/business/user/address/ShippingAddressData.zig").ShippingAddressData;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const TaxFactory = @import("org/allbinary/business/user/commerce/money/tax/TaxFactory.zig").TaxFactory;
const TaxModuleInterface = @import("org/allbinary/business/user/commerce/money/tax/modules/TaxModuleInterface.zig").TaxModuleInterface;
const ShippingAddressesEntity = @import("org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity.zig").ShippingAddressesEntity;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ShippingAddressView = @import("views/generic/address/shipping/ShippingAddressView.zig").ShippingAddressView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const AddTaxValidationView = struct {
    const Self = @This();
    pub const java_name = "views.generic.address.shipping.AddTaxValidationView";
    base: ShippingAddressView = undefined,
    logUtil: ?*LogUtil = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ShippingAddressView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            Inheritance.fieldPointer(self, "streetAddress").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "streetAddress").*), Inheritance.callStatic(StreetAddress, "create1", .{ Inheritance.receiver(self, "getRequest").getRequest() }));
            const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName() }));
            const taxInterface: ?*TaxModuleInterface = Inheritance.upcast(?*TaxModuleInterface, Inheritance.call(TaxFactory.getInstance().?, "getInstance", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, storeFrontInterface }));
            if (taxInterface == null) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            if (Object.same(Inheritance.call(taxInterface.?, "isValid", .{ Inheritance.fieldPointer(self, "streetAddress").*, storeFrontInterface }), Boolean.FALSE)) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const billingAddressesEntity: ?*ShippingAddressesEntity = Inheritance.callStatic(ShippingAddressesEntity, "create1", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getUserName").getUserName() });
            const streetAddressList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(billingAddressesEntity.?, "get").get());
            if (streetAddressList == null) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            const size: i32 = streetAddressList.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const aStreetAddress: ?*StreetAddress = Inheritance.cast(?*StreetAddress, Inheritance.call(streetAddressList.?, "get", .{ index }));
                if (Inheritance.call(aStreetAddress.?.getName().?, "compareTo", .{ ShippingAddressData.TAX }) == 0) {
                    return Inheritance.upcast(?*Boolean, Boolean.FALSE);
                }
                }
            }
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    // throws Exception
    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            const storeFrontInterface: ?*StoreFrontInterface = Inheritance.upcast(?*StoreFrontInterface, Inheritance.callStatic(StoreFrontFactory, "getInstance", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface().?, "getStoreName").getStoreName() }));
            const taxInterface: ?*TaxModuleInterface = Inheritance.upcast(?*TaxModuleInterface, Inheritance.call(TaxFactory.getInstance().?, "getInstance", .{ Inheritance.fieldPointer(self, "abeClientInformation").*, storeFrontInterface }));
            if (taxInterface == null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Unable to Load Tax Component<br/>") });
            } else {
                if (Object.same(Inheritance.call(taxInterface.?, "isValid", .{ Inheritance.fieldPointer(self, "streetAddress").*, storeFrontInterface }), Boolean.FALSE)) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Unable to validate address with Tax Component<br/>") });
                }
            }
            const billingAddressesEntity: ?*ShippingAddressesEntity = Inheritance.callStatic(ShippingAddressesEntity, "create1", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getUserName").getUserName() });
            const streetAddressList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(billingAddressesEntity.?, "get").get());
            const size: i32 = streetAddressList.?.size();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const aStreetAddress: ?*StreetAddress = Inheritance.cast(?*StreetAddress, Inheritance.call(streetAddressList.?, "get", .{ index }));
                if (Inheritance.call(aStreetAddress.?.getName().?, "compareTo", .{ ShippingAddressData.TAX }) == 0) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Not a valid tax location<br/>") });
                }
                }
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to create validateInfo"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Creating ValidationInfo");
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

