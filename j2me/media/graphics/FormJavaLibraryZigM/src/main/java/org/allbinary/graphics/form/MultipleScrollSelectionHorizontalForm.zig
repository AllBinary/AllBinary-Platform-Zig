// Generated Code Do Not Modify
// package org.allbinary.graphics.form

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Font = @import("javax/microedition/lcdui/Font.zig").Font;
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const J2MEUtil = @import("org/allbinary/J2MEUtil.zig").J2MEUtil;
const Rectangle = @import("org/allbinary/graphics/Rectangle.zig").Rectangle;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const MyFontProcessor = @import("org/allbinary/graphics/font/MyFontProcessor.zig").MyFontProcessor;
const UpdateMyFontInterface = @import("org/allbinary/graphics/font/UpdateMyFontInterface.zig").UpdateMyFontInterface;
const UpdateMyFontProcessor = @import("org/allbinary/graphics/font/UpdateMyFontProcessor.zig").UpdateMyFontProcessor;
const ABCustomItem = @import("org/allbinary/graphics/form/item/ABCustomItem.zig").ABCustomItem;
const NullPaintable = @import("org/allbinary/graphics/paint/NullPaintable.zig").NullPaintable;
const Paintable = @import("org/allbinary/graphics/paint/Paintable.zig").Paintable;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const FormType = @import("org/allbinary/graphics/form/FormType.zig").FormType;
const FormTypeFactory = @import("org/allbinary/graphics/form/FormTypeFactory.zig").FormTypeFactory;
const ItemIndexPaintable = @import("org/allbinary/graphics/form/ItemIndexPaintable.zig").ItemIndexPaintable;
const ItemPaintableFactory = @import("org/allbinary/graphics/form/ItemPaintableFactory.zig").ItemPaintableFactory;
const ScrollSelectionForm = @import("org/allbinary/graphics/form/ScrollSelectionForm.zig").ScrollSelectionForm;

pub const MultipleScrollSelectionHorizontalForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm";
    base: ScrollSelectionForm = undefined,
    rectPaintable: ?*Paintable = null,
    multipleScrollSelectionHorizontalFormTypeItemIndexPaintable: ?*ItemIndexPaintable = null,
    backgroundColor: i32 = 0,
    myFontProcessor: ?*MyFontProcessor = null,
    logged: bool = false,
    fontHeight: i32 = 0,
    // Implements UpdateMyFontInterface

    fn initFields(this: *Self) void {
        this.rectPaintable = Inheritance.upcast(?*Paintable, NullPaintable.getInstance());
        this.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = Inheritance.upcast(?*ItemIndexPaintable, ItemIndexPaintable.getInstance());
        this.backgroundColor = Inheritance.receiverOf(BasicColorFactory.getInstance().?.TRANSPARENT_GREY.?, "intValue").intValue();
        this.myFontProcessor = Inheritance.upcast(?*MyFontProcessor, Inheritance.callStatic(UpdateMyFontProcessor, "create1", .{ this }));
        this.logged = false;
        this.fontHeight = 0;
    }
    

    // throws Exception
    pub fn createForm(title: ?*String, items: []?*ABCustomItem, rectangle: ?*Rectangle, formType: ?*FormType, border: i32, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) ?*ScrollSelectionForm {
        const scrollSelectionForm: ?*ScrollSelectionForm = Inheritance.upcast(?*ScrollSelectionForm, Inheritance.callStatic(MultipleScrollSelectionHorizontalForm, "create6", .{ title, items, ItemPaintableFactory.getInstance(), border, backgroundBasicColor, foregroundBasicColor }));
        _ = Inheritance.call(scrollSelectionForm.?, "init", .{ rectangle, formType });
        return scrollSelectionForm;
    }
    

    pub fn create6(title: ?*String, items: []?*ABCustomItem, formPaintableFactory: ?*ItemPaintableFactory, border: i32, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ScrollSelectionForm, "create7", .{ title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor }).*;
        this.initFields();
        if (J2MEUtil.isJ2ME() or J2MEUtil.isHTML()) {
        } else {
            const MPaintable = struct {
                const Self = @This();
                pub const java_name = "org.allbinary.graphics.form.MPaintable";
                base: Paintable = undefined,

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Paintable.create().*;
        Inheritance.bindOverrides(this);
        return this;
    }
                

                pub fn paint(self: *Self, graphics: ?*Graphics) void {
                    _ = Inheritance.call(self, "fillRect", .{ graphics });
                }
            };
            this.rectPaintable = Inheritance.upcast(@TypeOf(this.rectPaintable), MPaintable.create());
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn fillRect(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(graphics.?, "setColor", .{ self.backgroundColor });
        _ = Inheritance.call(graphics.?, "fillRect", .{ Inheritance.fieldPointer(self, "x").*, Inheritance.fieldPointer(self, "y").*, Inheritance.fieldPointer(self, "rectangle").*.?.getWidth(), Inheritance.fieldPointer(self, "rectangle").*.?.getHeight() });
    }
    

    // throws Exception
    pub fn init(self: *Self, rectangle: ?*Rectangle, formType: ?*FormType) void {
        _ = Inheritance.call(&self.base, "init", .{ rectangle, formType });
        const formTypeFactory: ?*FormTypeFactory = Inheritance.upcast(?*FormTypeFactory, FormTypeFactory.getInstance());
        if (Object.same(formType, formTypeFactory.?.HORIZONTAL_FORM)) {
            self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = Inheritance.upcast(@TypeOf(self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable), Inheritance.callStatic(MultipleScrollSelectionFormHorizontalPaintable, "create1", .{ self }));
        } else if (Object.same(formType, formTypeFactory.?.VERTICAL_CENTER_FORM)) {
            self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = Inheritance.upcast(@TypeOf(self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable), Inheritance.callStatic(MultipleScrollSelectionFormVerticalPaintable, "create1", .{ self }));
        } else if (Object.same(formType, formTypeFactory.?.NULL_FORM_TYPE)) {
        } else {
            std.debug.panic("{any}", .{exception: { _ = formTypeFactory.?.UNK; break :exception error.Exception; }});
        }
    }
    

    pub fn updateMeasurement(self: *Self, graphics: ?*Graphics) void {
        const font: ?*Font = Inheritance.upcast(?*Font, graphics.?.getFont());
        self.fontHeight = font.?.getHeight();
        self.myFontProcessor = Inheritance.upcast(@TypeOf(self.myFontProcessor), MyFontProcessor.getInstance());
    }
    

    // throws Exception
    pub fn paintHorizontal(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, dxParameter: i32, dy: i32) i32 {
        var dx = dxParameter;
        const dx2: i32 = Inheritance.call(self, "paintItem", .{ graphics, index, item, dx, dy }) + Inheritance.fieldPointer(self, "border").*;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "paintable").*.?, "paint", .{ graphics, index, dx, dy });
        dx = dx2;
        return dx;
    }
    

    // throws Exception
    pub fn paintVertical(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
        _ = Inheritance.call(self, "paintItem", .{ graphics, index, item, dx, dy });
        _ = Inheritance.call(Inheritance.fieldPointer(self, "paintable").*.?, "paint", .{ graphics, index, dx, dy });
        return dx;
    }
    

    pub fn getStartIndex(self: *Self) i32 {
        return Inheritance.receiver(self, "getSelectedIndex").getSelectedIndex();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        { // try
            _ = Inheritance.call(self.myFontProcessor.?, "process", .{ graphics });
            const start: i32 = self.getStartIndex();
            const size: i32 = Inheritance.receiver(self, "size").size();
            var dx: i32 = Inheritance.fieldPointer(self, "x").*;
            const dy: i32 = Inheritance.fieldPointer(self, "y").*;
            _ = Inheritance.call(self.rectPaintable.?, "paint", .{ graphics });
            _ = Inheritance.call(graphics.?, "drawString", .{ Inheritance.receiver(self, "getTitle").getTitle(), Inheritance.fieldPointer(self, "x").*, Inheritance.fieldPointer(self, "y").* - self.fontHeight, 0 });
            var item: ?*ABCustomItem = null;
            {
                var index: i32 = start;
                while (index < size) : (index += 1) {
                item = Inheritance.upcast(@TypeOf(item), Inheritance.call(self, "get", .{ index }));
                if (dx >= Inheritance.fieldPointer(self, "rectangle").*.?.getMaxX()) {
                    if (self.logged) {
                    } else {
                        self.logged = true;
                        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("painting beyond maxx: ") }).?, "appendint", .{ @as(i32, @intCast(Inheritance.fieldPointer(self, "rectangle").*.?.getMaxX())) }))), self, Inheritance.fieldPointer(self, "canvasStrings").*.?.PAINT });
                    }
                }
                dx = Inheritance.call(self.multipleScrollSelectionHorizontalFormTypeItemIndexPaintable.?, "paint", .{ graphics, index, item, dx, dy });
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "canvasStrings").*.?.PAINT });
    }
    pub const MultipleScrollSelectionFormHorizontalPaintable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.MultipleScrollSelectionFormHorizontalPaintable";
        base: ItemIndexPaintable = undefined,
        multipleScrollSelectionForm: ?*MultipleScrollSelectionHorizontalForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(multipleScrollSelectionForm: ?*MultipleScrollSelectionHorizontalForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ItemIndexPaintable.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "multipleScrollSelectionForm").* = multipleScrollSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn paint(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
            return Inheritance.call(Inheritance.fieldPointer(self, "multipleScrollSelectionForm").*.?, "paintHorizontal", .{ graphics, index, item, dx, dy });
        }
    };
    pub const MultipleScrollSelectionFormVerticalPaintable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.graphics.form.MultipleScrollSelectionFormVerticalPaintable";
        base: ItemIndexPaintable = undefined,
        multipleScrollSelectionForm: ?*MultipleScrollSelectionHorizontalForm = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(multipleScrollSelectionForm: ?*MultipleScrollSelectionHorizontalForm) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ItemIndexPaintable.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "multipleScrollSelectionForm").* = multipleScrollSelectionForm;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        // throws Exception
        pub fn paint(self: *Self, graphics: ?*Graphics, index: i32, item: ?*ABCustomItem, dx: i32, dy: i32) i32 {
            return Inheritance.call(Inheritance.fieldPointer(self, "multipleScrollSelectionForm").*.?, "paintVertical", .{ graphics, index, item, dx, dy });
        }
    };
};

