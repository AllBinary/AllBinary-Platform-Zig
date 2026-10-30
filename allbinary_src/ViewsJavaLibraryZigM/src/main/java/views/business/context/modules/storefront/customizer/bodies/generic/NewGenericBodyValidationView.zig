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
// package views.business.context.modules.storefront.customizer.bodies.generic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const GenericBodyValidation = @import("org/allbinary/logic/visual/transform/template/customizer/bodies/GenericBodyValidation.zig").GenericBodyValidation;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const CustomizerUtil = @import("views/business/context/modules/storefront/customizer/CustomizerUtil.zig").CustomizerUtil;
const GenericBodyCustomizerView = @import("views/business/context/modules/storefront/customizer/bodies/generic/GenericBodyCustomizerView.zig").GenericBodyCustomizerView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const NewGenericBodyValidationView = struct {
    const Self = @This();
    pub const java_name = "views.business.context.modules.storefront.customizer.bodies.generic.NewGenericBodyValidationView";
    base: GenericBodyCustomizerView = undefined,
    logUtil: ?*LogUtil = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(GenericBodyCustomizerView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        Inheritance.fieldPointer(this, "body").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "body").*), GenericBodyValidation.create());
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn toXmlDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            {
                _ = Inheritance.call(CustomizerUtil.getInstance().?, "insert", .{ Inheritance.receiver(self, "getTransformInfoInterface").getTransformInfoInterface(), Inheritance.cast(?*DomNodeInterface, Inheritance.fieldPointer(self, "body").*) });
            }
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate"), self, Inheritance.fieldPointer(self, "commonStrings").*.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(Inheritance.fieldPointer(self, "body").*.?, "validationInfo").validationInfo() });
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Getting Validation Info");
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
    

    // throws Exception
    pub fn view(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "views").*.?.ValidationOnlyTempUtil.?, "getInstance").getInstance().?, "view", .{ self }));
    }
};

