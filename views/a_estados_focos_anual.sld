<?xml version="1.0" encoding="UTF-8"?>
<StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:se="http://www.opengis.net/se" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd">
    <NamedLayer>
        <se:Name>Layer</se:Name>
        <UserStyle>
            <se:Name>Style</se:Name>
            <se:FeatureTypeStyle version="1.1.0">
                <se:Rule>
                    <se:Name>Default</se:Name>
                    <se:PolygonSymbolizer version="1.1.0">
                        <se:Fill>
                            <se:SvgParameter name="fill">
                                <ogc:Literal>#551818</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="fill-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                        </se:Fill>
                        <se:Stroke>
                            <se:SvgParameter name="stroke">
                                <ogc:Literal>#000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-width">
                                <ogc:Literal>1</ogc:Literal>
                            </se:SvgParameter>
                        </se:Stroke>
                    </se:PolygonSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>até 20</se:Name>
                    <ogc:Filter>
                        <ogc:PropertyIsLessThanOrEqualTo>
                            <ogc:PropertyName>nfocos</ogc:PropertyName>
                            <ogc:Literal>20</ogc:Literal>
                        </ogc:PropertyIsLessThanOrEqualTo>
                    </ogc:Filter>
                    <se:PolygonSymbolizer version="1.1.0">
                        <se:Fill>
                            <se:SvgParameter name="fill">
                                <ogc:Literal>#FFC387</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="fill-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                        </se:Fill>
                        <se:Stroke>
                            <se:SvgParameter name="stroke">
                                <ogc:Literal>#000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-width">
                                <ogc:Literal>1</ogc:Literal>
                            </se:SvgParameter>
                        </se:Stroke>
                    </se:PolygonSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>até 75</se:Name>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>nfocos</ogc:PropertyName>
                                <ogc:Literal>20</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>nfocos</ogc:PropertyName>
                                <ogc:Literal>75</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <se:PolygonSymbolizer version="1.1.0">
                        <se:Fill>
                            <se:SvgParameter name="fill">
                                <ogc:Literal>#FAA046</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="fill-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                        </se:Fill>
                        <se:Stroke>
                            <se:SvgParameter name="stroke">
                                <ogc:Literal>#000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-width">
                                <ogc:Literal>1</ogc:Literal>
                            </se:SvgParameter>
                        </se:Stroke>
                    </se:PolygonSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>até 200</se:Name>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>nfocos</ogc:PropertyName>
                                <ogc:Literal>75</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>nfocos</ogc:PropertyName>
                                <ogc:Literal>200</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <se:PolygonSymbolizer version="1.1.0">
                        <se:Fill>
                            <se:SvgParameter name="fill">
                                <ogc:Literal>#FA872D</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="fill-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                        </se:Fill>
                        <se:Stroke>
                            <se:SvgParameter name="stroke">
                                <ogc:Literal>#000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-width">
                                <ogc:Literal>1</ogc:Literal>
                            </se:SvgParameter>
                        </se:Stroke>
                    </se:PolygonSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>até 300</se:Name>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>nfocos</ogc:PropertyName>
                                <ogc:Literal>200</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>nfocos</ogc:PropertyName>
                                <ogc:Literal>300</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <se:PolygonSymbolizer version="1.1.0">
                        <se:Fill>
                            <se:SvgParameter name="fill">
                                <ogc:Literal>#FA5C25</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="fill-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                        </se:Fill>
                        <se:Stroke>
                            <se:SvgParameter name="stroke">
                                <ogc:Literal>#000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-width">
                                <ogc:Literal>1</ogc:Literal>
                            </se:SvgParameter>
                        </se:Stroke>
                    </se:PolygonSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>até 600</se:Name>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>nfocos</ogc:PropertyName>
                                <ogc:Literal>300</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>nfocos</ogc:PropertyName>
                                <ogc:Literal>600</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <se:PolygonSymbolizer version="1.1.0">
                        <se:Fill>
                            <se:SvgParameter name="fill">
                                <ogc:Literal>#C34231</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="fill-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                        </se:Fill>
                        <se:Stroke>
                            <se:SvgParameter name="stroke">
                                <ogc:Literal>#000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-width">
                                <ogc:Literal>1</ogc:Literal>
                            </se:SvgParameter>
                        </se:Stroke>
                    </se:PolygonSymbolizer>
                </se:Rule>
                <se:Rule>
                    <se:Name>até 1000</se:Name>
                    <ogc:Filter>
                        <ogc:And>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>nfocos</ogc:PropertyName>
                                <ogc:Literal>600</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                            <ogc:PropertyIsLessThanOrEqualTo>
                                <ogc:PropertyName>nfocos</ogc:PropertyName>
                                <ogc:Literal>1000</ogc:Literal>
                            </ogc:PropertyIsLessThanOrEqualTo>
                        </ogc:And>
                    </ogc:Filter>
                    <se:PolygonSymbolizer version="1.1.0">
                        <se:Fill>
                            <se:SvgParameter name="fill">
                                <ogc:Literal>#A21C0D</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="fill-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                        </se:Fill>
                        <se:Stroke>
                            <se:SvgParameter name="stroke">
                                <ogc:Literal>#000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-opacity">
                                <ogc:Literal>1.000000</ogc:Literal>
                            </se:SvgParameter>
                            <se:SvgParameter name="stroke-width">
                                <ogc:Literal>1</ogc:Literal>
                            </se:SvgParameter>
                        </se:Stroke>
                    </se:PolygonSymbolizer>
                </se:Rule>
            </se:FeatureTypeStyle>
        </UserStyle>
    </NamedLayer>
</StyledLayerDescriptor>