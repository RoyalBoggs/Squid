/*
 * Copyright 2016 James F. Bowring and CIRDLES.org.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.cirdles.squid.tasks.expressions.expressionTrees;

import org.cirdles.squid.exceptions.SquidException;
import org.cirdles.squid.shrimp.ShrimpFractionExpressionInterface;
import org.cirdles.squid.tasks.TaskInterface;
import org.cirdles.squid.tasks.expressions.constants.ConstantNode;
import org.cirdles.squid.tasks.expressions.spots.SpotFieldNode;
import org.cirdles.squid.tasks.expressions.variables.VariableNodeForIsotopicRatios;
import org.cirdles.squid.tasks.expressions.variables.VariableNodeForPerSpotTaskExpressions;

import java.util.List;

/**
 * @author James F. Bowring
 */
public interface ExpressionTreeInterface {

    /**
     * @param shrimpFractions the value of shrimpFraction
     * @param task
     * @return the double[][]
     * @throws org.cirdles.squid.exceptions.SquidException
     */
    public Object[][] eval(List<ShrimpFractionExpressionInterface> shrimpFractions, TaskInterface task) throws SquidException;

    /**
     * @return
     */
    public String getName();

    /**
     * @param name the name to set
     */
    public void setName(String name);

    /**
     * @return the parentET
     */
    public ExpressionTreeInterface getParentET();

    /**
     * @param parentET the parentET to set
     */
    public void setParentET(ExpressionTreeInterface parentET);

    /**
     * @return the rootExpressionTree
     */
    public boolean isRootExpressionTree();

    /**
     * @param rootExpressionTree the rootExpressionTree to set
     */
    public void setRootExpressionTree(boolean rootExpressionTree);

    /**
     * @return
     */
    public String toStringMathML();

    /**
     * @return
     */
    public boolean isTypeFunction();

    /**
     * @return
     */
    public boolean isTypeFunctionOrOperation();

    public boolean builtAsValueModel();

    public boolean amHealthy();

    public boolean isValid();

    public boolean usesAnotherExpression(ExpressionTreeInterface exp);

    public boolean usesOtherExpression();

    /**
     * @return the squidSwitchSTReferenceMaterialCalculation
     */
    public boolean isSquidSwitchSTReferenceMaterialCalculation();

    /**
     * @param origin
     */
    public void copySettings(ExpressionTreeInterface origin);

    /**
     * @param squidSwitchSTReferenceMaterialCalculation the
     *                                                  squidSwitchSTReferenceMaterialCalculation to set
     */
    public void setSquidSwitchSTReferenceMaterialCalculation(boolean squidSwitchSTReferenceMaterialCalculation);

    /**
     * @return the squidSwitchSAUnknownCalculation
     */
    public boolean isSquidSwitchSAUnknownCalculation();

    /**
     * @return the unknownsGroupSampleName
     */
    public String getUnknownsGroupSampleName();

    /**
     * @param unknownsGroupSampleName the unknownsGroupSampleName to set
     */
    public void setUnknownsGroupSampleName(String unknownsGroupSampleName);

    /**
     * @param squidSwitchSAUnknownCalculation the
     *                                        squidSwitchSAUnknownCalculation to set
     */
    public void setSquidSwitchSAUnknownCalculation(boolean squidSwitchSAUnknownCalculation);

    /**
     * @return the squidSwitchSCSummaryCalculation
     */
    public boolean isSquidSwitchSCSummaryCalculation();

    /**
     * @param squidSwitchSCSummaryCalculation the
     *                                        squidSwitchSCSummaryCalculation to set
     */
    public void setSquidSwitchSCSummaryCalculation(boolean squidSwitchSCSummaryCalculation);

    /**
     * @return the squidSpecialUPbThExpression
     */
    public boolean isSquidSpecialUPbThExpression();

    /**
     * @param squidSpecialUPbThExpression the squidSpecialUPbThExpression to set
     */
    public void setSquidSpecialUPbThExpression(boolean squidSpecialUPbThExpression);

    /**
     * @return the squidSwitchConcentrationReferenceMaterialCalculation
     */
    public boolean isSquidSwitchConcentrationReferenceMaterialCalculation();

    /**
     * @param squidSwitchConcentrationReferenceMaterialCalculation the
     *                                                             squidSwitchConcentrationReferenceMaterialCalculation to set
     */
    public void setSquidSwitchConcentrationReferenceMaterialCalculation(boolean squidSwitchConcentrationReferenceMaterialCalculation);

    /**
     * @param uncertaintyDirective the uncertaintyDirective to set
     */
    public void setUncertaintyDirective(String uncertaintyDirective);

    /**
     * @param index the index to set
     */
    public void setIndex(int index);

    /**
     * @param objects
     * @return
     * @throws org.cirdles.squid.exceptions.SquidException
     */
    public static double[] convertObjectArrayToDoubles(Object[] objects) throws SquidException {
        if (objects == null) {
            throw new SquidException("Failed to retrieve data at convertObjectArrayToDoubles.");
        }
        double[] retVal = new double[objects.length];
        for (int i = 0; i < objects.length; i++) {
            if (objects[i] instanceof Integer) {
                retVal[i] = ((Integer) objects[i]).doubleValue();
            } else if (objects[i] instanceof Long) {
                retVal[i] = ((Long) objects[i]).doubleValue();
            } else if (objects[i] instanceof Boolean) {
                retVal[i] = 0.0;
            } else if (!(objects[i] instanceof Number)) {
                retVal[i] = 0.0;
            } else {
                retVal[i] = (double) objects[i];
            }
        }
        return retVal;
    }

    /**
     * @param objects
     * @return
     * @throws org.cirdles.squid.exceptions.SquidException
     */
    public static double[][] convertObjectArrayToDoubles(Object[][] objects) throws SquidException {
        if (objects == null) {
            throw new SquidException("Failed to retrieve data.");
        }
        double[][] retVal = new double[objects.length][];
        for (int i = 0; i < objects.length; i++) {
            retVal[i] = convertObjectArrayToDoubles(objects[i]);
        }
        return retVal;
    }

    /**
     * @param types
     * @return
     * @throws org.cirdles.squid.exceptions.SquidException
     */
    public static Object[] convertArrayToObjects(double[] types) throws SquidException {
        if (types == null) {
            throw new SquidException("Failed to retrieve data.");
        }
        Object[] retVal = new Object[types.length];
        for (int i = 0; i < types.length; i++) {
            retVal[i] = (Object) types[i];
        }

        return retVal;
    }

    /**
     * @param types
     * @return
     * @throws org.cirdles.squid.exceptions.SquidException
     */
    public static Object[][] convertArrayToObjects(double[][] types) throws SquidException {
        if (types == null) {
            throw new SquidException("Failed to retrieve data.");
        }
        Object[][] retVal = new Object[types.length][];
        for (int i = 0; i < types.length; i++) {
            retVal[i] = convertArrayToObjects(types[i]);
        }
        return retVal;
    }

    /**
     * @param objects
     * @return
     * @throws org.cirdles.squid.exceptions.SquidException
     */
    public static boolean[] convertObjectArrayToBooleans(Object[] objects) throws SquidException {
        if (objects == null) {
            throw new SquidException("Failed to retrieve data.");
        }
        boolean[] retVal = new boolean[objects.length];
        for (int i = 0; i < objects.length; i++) {
            if (!(objects[i] instanceof Boolean)) {
                objects[i] = false;
            }
            retVal[i] = (boolean) objects[i];
        }
        return retVal;
    }

    public default int argumentCount() {
        int retVal = 0;

        if (this instanceof ExpressionTreeBuilderInterface) {
            if (((ExpressionTreeBuilderInterface) this).getOperation() != null) {
                retVal = ((ExpressionTreeBuilderInterface) this).getOperation().getArgumentCount();
            }
        }

        return retVal;
    }

    public default void auditExpressionTreeDependencies(List<String> argumentAudit) {
        argumentAudit.add(((ExpressionTreeBuilderInterface) this).auditOperationArgumentCount());
        for (ExpressionTreeInterface child : ((ExpressionTreeBuilderInterface) this).getChildrenET()) {
            // SpotFieldNode is an ExpressionTree without Children
            if ((child instanceof ExpressionTree)
                    && !(child instanceof SpotFieldNode)
                    && !(child instanceof VariableNodeForIsotopicRatios)
                    && !(child instanceof VariableNodeForPerSpotTaskExpressions)) {
                child.auditExpressionTreeDependencies(argumentAudit);
            }
        }
    }

    public default void auditExpressionTreeTargetMatching(List<String> argumentAudit) {
        if (!amAnonymous()
                && !(this instanceof ConstantNode)
                && !(this instanceof VariableNodeForIsotopicRatios)) {
            String audit = ((ExpressionTreeBuilderInterface) this).auditTargetCompatibility();
            if (!argumentAudit.contains(audit)) {
                argumentAudit.add(audit);
            }
        }
        for (ExpressionTreeInterface child : ((ExpressionTreeBuilderInterface) ((ExpressionTree) this)).getChildrenET()) {
            child.auditExpressionTreeTargetMatching(argumentAudit);
        }
    }

    public default int auditTargetMatchingII(int targetBits) {
        int audit = targetBits;
        if (!amAnonymous()
                && !(this instanceof ConstantNode)
                && !(this instanceof VariableNodeForIsotopicRatios)) {
            audit = audit & this.makeTargetBits();
        }
        for (ExpressionTreeInterface child : ((ExpressionTreeBuilderInterface) ((ExpressionTree) this)).getChildrenET()) {
            audit = audit & child.auditTargetMatchingII(audit);
        }

        return audit;
    }

    /**
     * @return targetBits = 2 for both (11), 1 for RM (01), 2 for U (10)
     */
    public default int makeTargetBits() {
        int targetBits
                = ((isSquidSwitchSTReferenceMaterialCalculation() || isSquidSwitchConcentrationReferenceMaterialCalculation()) ? 1 : 0)
                + (isSquidSwitchSAUnknownCalculation() ? 2 : 0);
        targetBits
                = (isSquidSwitchSCSummaryCalculation() ? 3 : targetBits);
        return targetBits;
    }

    public boolean amAnonymous();
}