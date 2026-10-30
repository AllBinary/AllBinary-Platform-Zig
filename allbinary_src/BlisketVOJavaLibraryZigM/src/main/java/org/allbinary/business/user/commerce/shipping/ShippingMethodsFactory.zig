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
// package org.allbinary.business.user.commerce.shipping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const DynamicObjectData = @import("org/allbinary/business/DynamicObjectData.zig").DynamicObjectData;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const BasicWeightShippingModuleView = @import("org/allbinary/business/user/commerce/shipping/modules/BasicWeightShippingModuleView.zig").BasicWeightShippingModuleView;
const NoShippingModuleView = @import("org/allbinary/business/user/commerce/shipping/modules/NoShippingModuleView.zig").NoShippingModuleView;
const ShippingInterface = @import("org/allbinary/business/user/commerce/shipping/modules/ShippingInterface.zig").ShippingInterface;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const CryptFileReader = @import("org/allbinary/logic/control/crypt/file/CryptFileReader.zig").CryptFileReader;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeFactory = @import("org/allbinary/logic/system/loader/AbeFactory.zig").AbeFactory;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const TransformInfoObjectConfigData = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData.zig").TransformInfoObjectConfigData;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const NodeList = @import("org/w3c/dom/NodeList.zig").NodeList;
const ShippingMethodData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodData.zig").ShippingMethodData;
const ShippingMethodsData = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodsData.zig").ShippingMethodsData;

pub const ShippingMethodsFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory";
    defaultShippingMethodInterface: ?*ShippingInterface = null,
    document: ?*Document = null,
    shippingVector: ?*BasicArrayList = null,
    const SHIPPINGMETHODSFILEPATHSTRING: ?*String = null;
    const SHIPPINGMETHODSFILENAME: ?*String = String.literal("shippingMethods.xml");

    fn initFields(this: *Self) void {
        this.defaultShippingMethodInterface = null;
        
        
    }
    

    // Java static initializer: call this once at startup
    pub fn staticInitializer() void {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const sep: ?*String = Inheritance.upcast(?*String, AbPathData.getInstance().?.SEPARATOR);
        _ = Inheritance.call(stringBuffer.?, "append", .{ sep });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("generic") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ sep });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("shipping") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ sep });
        ShippingMethodsFactory.SHIPPINGMETHODSFILEPATHSTRING = Inheritance.upcast(@TypeOf(ShippingMethodsFactory.SHIPPINGMETHODSFILEPATHSTRING), Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, storeFrontInterface: ?*StoreFrontInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const sep: ?*String = Inheritance.upcast(?*String, AbPathData.getInstance().?.SEPARATOR);
        _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getMainPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFrontInterface.?, "getName").getName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ sep });
        _ = Inheritance.call(stringBuffer.?, "append", .{ ShippingMethodsFactory.SHIPPINGMETHODSFILEPATHSTRING });
        const abPath: ?*AbPath = Inheritance.cast(?*AbPath, Inheritance.callStatic(AbPath, "create2", .{ Object.toString(Object.of(stringBuffer)), this.SHIPPINGMETHODSFILENAME }));
        const data: ?*String = Inheritance.upcast(?*String, Inheritance.call(Inheritance.callStatic(CryptFileReader, "create2", .{ TransformInfoObjectConfigData.getInstance().?.UNCRYPTED_EXTENSION, TransformInfoObjectConfigData.getInstance().?.ENCRYPTED_EXTENSION }), "get", .{ abPath }));
        this.document = Inheritance.upcast(@TypeOf(this.document), Inheritance.callStatic(DomDocumentHelper, "create", .{ data }));
        this.shippingVector = Inheritance.upcast(@TypeOf(this.shippingVector), BasicArrayListD.create());
        const nodeList: ?*NodeList = Inheritance.upcast(?*NodeList, Inheritance.call(this.document.?, "getElementsByTagName", .{ ShippingMethodsData.NAME }));
        {
            var index: i32 = 0;
            while (index < nodeList.?.getLength()) : (index += 1) {
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(nodeList.?, "item", .{ index }));
            const shippingMethodNodeChildren: ?*NodeList = Inheritance.upcast(?*NodeList, node.?.getChildNodes());
            const shippingMethodNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ ShippingMethodData.NAME, shippingMethodNodeChildren }));
            const classNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ DynamicObjectData.NAME, shippingMethodNameNode.?.getChildNodes() }));
            const shippingMethodClassName: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ classNameNode }));
            const shippingMethodInterface: ?*ShippingInterface = Inheritance.cast(?*ShippingInterface, Inheritance.call(AbeFactory.getInstance().?, "getInstance", .{ abeClientInformation, shippingMethodClassName }));
            _ = Inheritance.call(this.shippingVector.?, "add", .{ shippingMethodInterface });
            const defaultShippingMethodNameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ ShippingMethodData.DEFAULT, shippingMethodNameNode.?.getChildNodes() }));
            const defaultShippingMethodNameNodeValue: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ defaultShippingMethodNameNode }));
            if (defaultShippingMethodNameNodeValue != null and Inheritance.call(defaultShippingMethodNameNodeValue.?, "compareTo", .{ ShippingMethodData.DEFAULT }) == 0) {
                this.defaultShippingMethodInterface = shippingMethodInterface;
            }
            }
        }
        if (this.shippingVector.?.size() < 1) {
            this.defaultShippingMethodInterface = Inheritance.upcast(@TypeOf(this.defaultShippingMethodInterface), BasicWeightShippingModuleView.create());
            _ = Inheritance.call(this.shippingVector.?, "add", .{ this.defaultShippingMethodInterface });
            _ = Inheritance.call(this.shippingVector.?, "add", .{ NoShippingModuleView.create() });
        }
        return this;
    }
    

    // throws Exception
    pub fn getInstance(self: *Self) ?*BasicArrayList {
        return self.shippingVector;
    }
    

    pub fn getDefaultInstance(self: *Self) ?*ShippingInterface {
        return self.defaultShippingMethodInterface;
    }
};

