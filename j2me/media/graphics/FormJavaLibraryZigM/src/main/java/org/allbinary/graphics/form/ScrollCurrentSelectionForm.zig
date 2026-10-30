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
// package org.allbinary.graphics.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const Processor = @import("org/allbinary/canvas/Processor.zig").Processor;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const FormType = @import("org/allbinary/graphics/form/FormType.zig").FormType;
const FormTypeFactory = @import("org/allbinary/graphics/form/FormTypeFactory.zig").FormTypeFactory;
const ItemIndexDx = @import("org/allbinary/graphics/form/ItemIndexDx.zig").ItemIndexDx;
const ItemPaintableFactory = @import("org/allbinary/graphics/form/ItemPaintableFactory.zig").ItemPaintableFactory;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;

pub const ScrollCurrentSelectionForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.ScrollCurrentSelectionForm";
    base: ScrollSelectionForm = undefined,
    moveForSmallScreen: bool = false,
    updateMyFontProcessor: ?*MyFontProcessor = null,
    myFontProcessor: ?*MyFontProcessor = null,
    processor: ?*Processor = null,
    preItemIndexDx: ?*ItemIndexDx = null,
    dx: i32 = 0,
    dy: i32 = 0,
    maxWidth: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        
        this.updateMyFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.myFontProcessor = this.updateMyFontProcessor;
        this.processor = Inheritance.upcast(?*Processor, Processor.getInstance());
        this.preItemIndexDx = Inheritance.upcast(?*ItemIndexDx, ItemIndexDx.getInstance());
        this.dx = 0;
        this.dy = 0;
        this.maxWidth = 0;
    }
    

    pub fn create8(title: ?*String, items: []?*ABCustomItem, formPaintableFactory: ?*ItemPaintableFactory, border: i32, adjustedExtraBorder: i32, moveForSmallScreen: bool, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ScrollSelectionForm, "create7", .{ title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor }).*;
        this.initFields();
        this.moveForSmallScreen = moveForSmallScreen;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn init(self: *Self, rectangle: ?*Rectangle, formType: ?*FormType) void {
        _ = Inheritance.call(&self.base, "init", .{ rectangle, formType });
        const formTypeFactory: ?*FormTypeFactory = Inheritance.upcast(?*FormTypeFactory, FormTypeFactory.getInstance());
        if (Object.same(formType, formTypeFactory.?.TEMP_HORIZONTAL_FORM)) {
            self.processor = Inheritance.upcast(@TypeOf(self.processor), Inheritance.callStatic(TempHorizontalFormProcessor, "create1", .{ self }));
            self.preItemIndexDx = Inheritance.upcast(@TypeOf(self.preItemIndexDx), Inheritance.callStatic(TempHorizontalItemIndexDx, "create1", .{ self }));
        } else if (Object.same(formType, formTypeFactory.?.HORIZONTAL_FORM)) {
            self.processor = Inheritance.upcast(@TypeOf(self.processor), Inheritance.callStatic(HorizontalFormProcessor, "create1", .{ self }));
            self.preItemIndexDx = Inheritance.upcast(@TypeOf(self.preItemIndexDx), Inheritance.callStatic(HorizontalItemIndexDx, "create1", .{ self }));
        } else if (Object.same(formType, formTypeFactory.?.VERTICAL_CENTER_FORM)) {
            self.processor = Inheritance.upcast(@TypeOf(self.processor), Inheritance.callStatic(VerticalFormProcessor, "create1", .{ self }));
            self.preItemIndexDx = Inheritance.upcast(@TypeOf(self.preItemIndexDx), Inheritance.callStatic(VerticalItemIndexDx, "create1", .{ self }));
        } else if (Object.same(formType, formTypeFactory.?.NULL_FORM_TYPE)) {
        } else {
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ formTypeFactory.?.UNK, self, Inheritance.fieldPointer(self, "commonStrings").*.?.INIT });
        }
        self.myFontProcessor = self.updateMyFontProcessor;
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    pub fn processTempHorizontalForm(self: *Self) void {
        self.dx = Inheritance.fieldPointer(self, "x").* - 30 + (Inheritance.fieldPointer(self, "rectangle").*.?.getWidth() >> @intCast(1));
        self.dy = Inheritance.fieldPointer(self, "y").*;
    }
    

    pub fn processHorizontalForm(self: *Self) void {
        const size: i32 = Inheritance.receiver(self, "size").size();
        var totalWidth: i32 = 0;
        var item: ?*ABCustomItem = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            item = Inheritance.upcast(@TypeOf(item), Inheritance.call(self, "get", .{ index }));
            totalWidth += item.?.getMinimumWidth() + Inheritance.fieldPointer(self, "border").*;
            }
        }
        self.dx = Inheritance.fieldPointer(self, "x").* + (Inheritance.fieldPointer(self, "rectangle").*.?.getWidth() >> @intCast(1)) - (totalWidth >> @intCast(1));
        self.dy = Inheritance.fieldPointer(self, "y").* + (Inheritance.fieldPointer(self, "rectangle").*.?.getHeight() >> @intCast(1));
        if (self.moveForSmallScreen) {
            const maxTitleHeight: i32 = 175;
            if (self.dy < maxTitleHeight) {
                self.dy = maxTitleHeight;
            }
        }
    }
    

    pub fn processVerticalForm(self: *Self) void {
        var totalHeight: i32 = 0;
        const size: i32 = Inheritance.receiver(self, "size").size();
        var item2: ?*ABCustomItem = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            item2 = Inheritance.upcast(@TypeOf(item2), Inheritance.call(self, "get", .{ index }));
            if (self.maxWidth < item2.?.getMinimumWidth()) {
                self.maxWidth = item2.?.getMinimumWidth();
            }
            totalHeight += item2.?.getMinimumHeight() + Inheritance.fieldPointer(self, "border").*;
            }
        }
        self.dx = ((divide_N69940: { const left_N69940 = (Inheritance.fieldPointer(self, "rectangle").*.?.getWidth() - self.maxWidth); const right_N69940 = 2; break :divide_N69940 if (comptime @typeInfo(@TypeOf(left_N69940)) == .int or @TypeOf(left_N69940) == comptime_int) @divTrunc(left_N69940, right_N69940) else left_N69940 / right_N69940; }));
        if (Inheritance.receiver(self, "size").size() > 0) {
            self.dy = Inheritance.fieldPointer(self, "y").* + ((divide_N70097: { const left_N70097 = (Inheritance.fieldPointer(self, "rectangle").*.?.getHeight() - totalHeight); const right_N70097 = 2; break :divide_N70097 if (comptime @typeInfo(@TypeOf(left_N70097)) == .int or @TypeOf(left_N70097) == comptime_int) @divTrunc(left_N70097, right_N70097) else left_N70097 / right_N70097; }));
            if (self.moveForSmallScreen) {
                const maxTitleHeight: i32 = 175;
                if (self.dy < maxTitleHeight) {
                    self.dy = maxTitleHeight;
                }
            }
        } else {
            self.dy = Inheritance.fieldPointer(self, "y").*;
        }
    }
    

    pub fn getXTempHorizontalForm(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
        _ = index;
        _ = dx;
        _ = dy;
        return Inheritance.call(self, "getDiffX", .{ item });
    }
    

    pub fn getXHorizontalForm(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
        _ = index;
        _ = item;
        _ = dx;
        _ = dy;
        _ = self;
        return 0;
    }
    

    pub fn getXVerticalForm(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
        _ = index;
        _ = dx;
        _ = dy;
        return Inheritance.call(self, "getDiffX", .{ item }) + Inheritance.fieldPointer(self, "halfBorder").*;
    }
    

    pub fn getDiffX(self: *Self, item: ?*ABCustomItem) i32 {
        return ((self.maxWidth - item.?.getMinimumWidth()) >> @intCast(1));
    }
    

    pub fn getDx(self: *Self) i32 {
        return self.dx;
    }
    

    pub fn getDy(self: *Self) i32 {
        return self.dy;
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        { // try
            _ = self.processor.?.process();
            var delta: i32 = 0;
            var deltaX: i32 = self.getDx();
            var deltaY: i32 = self.getDy();
            const size: i32 = Inheritance.receiver(self, "size").size();
            const formTypeFactory: ?*FormTypeFactory = Inheritance.upcast(?*FormTypeFactory, FormTypeFactory.getInstance());
            var item: ?*ABCustomItem = null;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                item = Inheritance.upcast(@TypeOf(item), Inheritance.call(self, "get", .{ index }));
                const diffX: i32 = Inheritance.call(self.preItemIndexDx.?, "getDx", .{ index, item, self.dx, self.dy });
                if (index == Inheritance.receiver(self, "getSelectedIndex").getSelectedIndex()) {
                    delta = Inheritance.call(self, "paintItem", .{ graphics, index, item, deltaX + diffX, deltaY });
                    _ = Inheritance.call(Inheritance.fieldPointer(self, "paintable").*.?, "paint", .{ graphics, index, deltaX + diffX, deltaY });
                } else {
                    delta = Inheritance.call(self, "paintUnselectedItem", .{ graphics, index, item, deltaX + diffX, deltaY });
                    _ = Inheritance.call(Inheritance.fieldPointer(self, "paintable").*.?, "paint", .{ graphics, index, deltaX + diffX, deltaY });
                }
                if (Object.same(Inheritance.fieldPointer(self, "formType").*, formTypeFactory.?.TEMP_HORIZONTAL_FORM)) {
                } else if (Object.same(Inheritance.fieldPointer(self, "formType").*, formTypeFactory.?.HORIZONTAL_FORM)) {
                    deltaX = delta;
                } else if (Object.same(Inheritance.fieldPointer(self, "formType").*, formTypeFactory.?.VERTICAL_CENTER_FORM)) {
                    deltaY = delta;
                } else {
                    std.debug.panic("{any}", .{exception: { _ = formTypeFactory.?.UNK; break :exception error.Exception; }});
                }
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "canvasStrings").*.?.PAINT, e });
    }
    pub const TempHorizontalFormProcessor = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.TempHorizontalFormProcessor";
        base: Processor = undefined,
        scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = Processor.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "scrollCurrentSelectionForm").* = scrollCurrentSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn process(self: *Self) void {
            _ = Inheritance.receiver(Inheritance.fieldPointer(self, "scrollCurrentSelectionForm").*.?, "processTempHorizontalForm").processTempHorizontalForm();
            Inheritance.fieldPointer(self, "scrollCurrentSelectionForm").*.?.processor = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "scrollCurrentSelectionForm").*.?.processor), Processor.getInstance());
        }
    };
    pub const HorizontalFormProcessor = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.HorizontalFormProcessor";
        base: Processor = undefined,
        scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = Processor.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "scrollCurrentSelectionForm").* = scrollCurrentSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn process(self: *Self) void {
            _ = Inheritance.receiver(Inheritance.fieldPointer(self, "scrollCurrentSelectionForm").*.?, "processHorizontalForm").processHorizontalForm();
            Inheritance.fieldPointer(self, "scrollCurrentSelectionForm").*.?.processor = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "scrollCurrentSelectionForm").*.?.processor), Processor.getInstance());
        }
    };
    pub const VerticalFormProcessor = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.VerticalFormProcessor";
        base: Processor = undefined,
        scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = Processor.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "scrollCurrentSelectionForm").* = scrollCurrentSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn process(self: *Self) void {
            _ = Inheritance.receiver(Inheritance.fieldPointer(self, "scrollCurrentSelectionForm").*.?, "processVerticalForm").processVerticalForm();
            Inheritance.fieldPointer(self, "scrollCurrentSelectionForm").*.?.processor = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "scrollCurrentSelectionForm").*.?.processor), Processor.getInstance());
        }
    };
    pub const TempHorizontalItemIndexDx = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.TempHorizontalItemIndexDx";
        base: ItemIndexDx = undefined,
        scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ItemIndexDx.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "scrollCurrentSelectionForm").* = scrollCurrentSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn getDx(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
            return Inheritance.call(Inheritance.fieldPointer(self, "scrollCurrentSelectionForm").*.?, "getXTempHorizontalForm", .{ index, item, dx, dy });
        }
    };
    pub const HorizontalItemIndexDx = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.HorizontalItemIndexDx";
        base: ItemIndexDx = undefined,
        scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ItemIndexDx.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "scrollCurrentSelectionForm").* = scrollCurrentSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn getDx(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
            return Inheritance.call(Inheritance.fieldPointer(self, "scrollCurrentSelectionForm").*.?, "getXHorizontalForm", .{ index, item, dx, dy });
        }
    };
    pub const VerticalItemIndexDx = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.VerticalItemIndexDx";
        base: ItemIndexDx = undefined,
        scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(scrollCurrentSelectionForm: ?*ScrollCurrentSelectionForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ItemIndexDx.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "scrollCurrentSelectionForm").* = scrollCurrentSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn getDx(self: *Self, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
            return Inheritance.call(Inheritance.fieldPointer(self, "scrollCurrentSelectionForm").*.?, "getXVerticalForm", .{ index, item, dx, dy });
        }
    };
};

